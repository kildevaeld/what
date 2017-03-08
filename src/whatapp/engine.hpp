#pragma once

#include <QString>
#include <QMap>
enum ResultType {
    Convertion
};

struct Result {
    ResultType type;
    QMap<QString,QString> result;
};

class WhatEngine {

public:
    WhatEngine();
    bool registerFromJavascript(const QString &str);
    Result run(const QString &str);

};
