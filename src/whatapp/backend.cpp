#include "backend.hpp"
#include <QDebug>
#include <QStringList>
Backend::Backend(QQuickItem *parent) : QQuickItem(parent) {}

QString Backend::suggest(const QString &in) {
  qDebug() << "Suggest" << in;
  if (in.isEmpty())
    return "";

  QStringList split = in.split(" ", QString::SkipEmptyParts);

  auto last = split[split.size() - 1];

  if (last.startsWith("by") && last != "bytes") {
    return "bytes";
  }

  return "";
}

QString Backend::transform(const QString &in) { qDebug() << ""; }
