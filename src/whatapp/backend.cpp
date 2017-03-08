#include "backend.hpp"
#include "engine.hpp"
#include <QDebug>
#include <QStringList>

Backend::Backend(QQuickItem *parent) : QQuickItem(parent) {
  m_results = new ResultsList(this);
}

QString Backend::suggest(const QString &in) {
  // qDebug() << "Suggest" << in;
  if (in.isEmpty())
    return "";

  QStringList split = in.split(" ", QString::SkipEmptyParts);

  auto last = split[split.size() - 1];

  if (last.startsWith("by") && last != "bytes") {
    return "bytes";
  }

  return "";
}

QVariantMap Backend::transform(const QString &in) {

  WhatEngine e;

  auto r = e.run(in);

  QList<ResultPair>::iterator i;
  QVariantMap m;

  m_results->setResult(r);

  return m;
}
