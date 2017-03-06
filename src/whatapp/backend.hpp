#pragma once
#include <QQuickItem>

class Backend : public QQuickItem {
  Q_OBJECT
public:
  Backend(QQuickItem *parent = 0);

public slots:
  QString suggest(const QString &in);
  QString transform(const QString &in);
};
