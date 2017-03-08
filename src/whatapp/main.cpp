#include "engine.hpp"
#include "window.hpp"
#include <QApplication>
#include <QDebug>
#include <QDir>
#include <QFile>
#include <QSqlDatabase>
#include <QSqlError>
#include <QSqlQuery>
#include <QStandardPaths>

QSqlError initDB(const QString &str) {
  QSqlDatabase db = QSqlDatabase::addDatabase("QSQLITE");
  db.setDatabaseName(":memory:");

  if (!db.open()) {
    return db.lastError();
  }

  QSqlQuery q;

  if (!q.exec(QLatin1String("create table if not exists converters(id integer "
                            "primary key autoincrement, name varchar unique, "
                            "script text)"))) {
    return q.lastError();
  }
  if (!q.exec(QLatin1String("create table if not exists units(converter_id "
                            "integer, unit varchar unique)"))) {
    return q.lastError();
  }

  WhatEngine e;

  QFile file(":/converters/datastorage.js");
  if (!file.open(QIODevice::ReadOnly)) {
    qDebug() << "file not readable";
    return QSqlError();
  }
  auto d = file.readAll();
  d.append('\0');

  e.registerFromJavascript(QString::fromUtf8(d));

  return QSqlError();
}

int main(int argc, char **argv) {

  QApplication app(argc, argv);
  app.setApplicationName("what");
  app.setOrganizationDomain("softshag");

  auto path = QStandardPaths::writableLocation(QStandardPaths::AppDataLocation);
  QDir dir(path);
  if (!dir.exists()) {
    dir.mkpath(".");
  }

  path = dir.absoluteFilePath("what.sqlite");
  auto e = initDB(path);
  if (e.isValid()) {
    qDebug() << e;
  }
  Window win;

  win.show();

  return app.exec();
}
