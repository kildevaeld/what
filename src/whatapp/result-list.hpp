#pragma once
#include <QAbstractListModel>

enum ResultType { Convertion };

struct ResultPair {
  QString key;
  QString value;
};

struct Result {
  ResultType type;
  QList<ResultPair> result;
};

class ResultsList : public QAbstractListModel {
  Q_OBJECT

public:
  enum RoleNames { Key, Value };
  Q_ENUM(RoleNames)

  ResultsList(QObject *parent = 0);

  // QAbstractItemModel interface
public:
  virtual int rowCount(const QModelIndex &parent) const;
  virtual QVariant data(const QModelIndex &index, int role) const;
  virtual QHash<int, QByteArray> roleNames() const;

  void setResult(const Result &r);

private:
  QList<ResultPair> m_result;
};
