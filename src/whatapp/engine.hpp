#pragma once
#include <QString>

enum ResultType {
    Convertion
};

struct Result {
    ResultType type;

};

class WhatEngine {

public:
    WhatEngine();
    bool registerFromJavascript(const QString &str);
    Result run(const QString &str);

};
