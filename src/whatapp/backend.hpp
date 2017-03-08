#pragma once
#include "result-list.hpp"
#include <QQuickItem>
class Backend : public QQuickItem {
  Q_OBJECT
  ResultsList *m_results;

public:
  Backend(QQuickItem *parent = 0);
  Q_PROPERTY(ResultsList *results READ results)

  ResultsList *results() const { return m_results; }

public slots:
  QString suggest(const QString &in);
  QVariantMap transform(const QString &in);
};
