#include "backend.hpp"
#include <QDebug>
#include <QStringList>
#include "engine.hpp"

Backend::Backend(QQuickItem *parent) : QQuickItem(parent) {}

QString Backend::suggest(const QString &in) {
  //qDebug() << "Suggest" << in;
  if (in.isEmpty())
    return "";

  QStringList split = in.split(" ", QString::SkipEmptyParts);

  auto last = split[split.size() - 1];

  if (last.startsWith("by") && last != "bytes") {
    return "bytes";
  }

  return "";
}

QString Backend::transform(const QString &in) {

    WhatEngine e;

    auto r = e.run(in);


    return "";

}
