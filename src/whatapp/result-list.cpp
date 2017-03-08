#include "result-list.hpp"
#include <QDebug>
ResultsList::ResultsList(QObject *parent) {}

int ResultsList::rowCount(const QModelIndex &parent) const {

  return m_result.size();
}

QVariant ResultsList::data(const QModelIndex &index, int role) const {

  if (!index.isValid()) {
    return QVariant();
  }

  auto r = m_result[index.row()];

  switch (role) {
  case Key:
    return r.key;
  case Value:
    return r.value;
  }

  return QVariant();
}

QHash<int, QByteArray> ResultsList::roleNames() const {
  QHash<int, QByteArray> h;
  h[Key] = "key";
  h[Value] = "value";
  return h;
}

void ResultsList::setResult(const Result &r) {
  beginResetModel();
  m_result = r.result;
  endResetModel();
}
