#pragma once

#include <QString>
#include <QMap>
#include "result-list.hpp"



class WhatEngine {

public:
    WhatEngine();
    bool registerFromJavascript(const QString &str);
    Result run(const QString &str);

};
