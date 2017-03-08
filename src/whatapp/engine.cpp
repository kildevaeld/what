#include "engine.hpp"
#include "what.h"
#include <QSqlQuery>
#include <QSqlError>
#include <QVariant>
#include <QDebug>

#include "parsing_functions.h"
#include "utility_functions.h"
#include <QSqlQuery>
#include <iostream>

WhatEngine::WhatEngine()
{

}

bool WhatEngine::registerFromJavascript(const QString &str) {

    std::string stdstr = str.toStdString();
    auto s = stdstr.c_str();


    what_t *w = what_create(s);

    if (!w) {
        return false;
    }


    auto name = w->_info->name;
    auto units = w->_info->units;
    auto size = w->_info->units_size;

    QSqlQuery q;

    q.prepare(QLatin1String("insert into converters(name, script) values(?, ?)"));

    q.addBindValue(QString(name));
    q.addBindValue(str);

    if (!q.exec()) {
        qDebug() << q.lastError();
        what_free(w);
        return false;
    }

    auto id = q.lastInsertId();

    q.clear();
    q.prepare(QLatin1String("insert into units(converter_id, unit) VALUES(?,?)"));

    for (int i = 0; i < size; i++ ) {
        auto u = units[i];
        q.addBindValue(id);
        q.addBindValue(QString(u));
        if (!q.exec()) {
            qDebug() << q.lastError();
        }
    }

    what_free(w);

    return true;
}

Result WhatEngine::run(const QString &in)
{
    std::string s = in.toStdString();

    element *e = parse(s.c_str());
    if (!e) {
        qDebug() << "Error";
        return Result();
    }


    QSqlQuery q;

    q.prepare("select converters.* from converters join units on units.converter_id = converters.id WHERE units.unit = ? LIMIT 1");
    q.addBindValue(QString(e->value.converter->from));

    QString name;
    QString script;
    what_t *what;
    int id;
    auto value = e->value.converter->value;
    auto v = std::to_string(value);

    std::vector<std::string> list;
    if (!q.exec()) {
        goto error;
    }

    if (!q.next()) {
        goto error;
    }

    name = q.value("name").toString();
    script = q.value("script").toString();
    id = q.value("id").toInt();
    s = script.toStdString();


    if (e->value.converter->to == NULL) {
        q.prepare("select * from units where converter_id = ?");
        q.addBindValue(id);
        q.exec();

        while(q.next()) {
            QString str = q.value("unit").toString();
            if (str ==e->value.converter->from) continue;
            list.push_back(str.toStdString());
        }

    } else {
        list.emplace_back(e->value.converter->to);
    }


     what = what_create(s.c_str());

    if (!what) {
        qDebug() << "NO WHAT";
        goto error;
    }


    for (auto ss: list) {
        qDebug() << e->value.converter->from << ss.c_str() << v.c_str();
        auto output = what_run(what, e->value.converter->from, ss.c_str(), v.c_str());
        qDebug() << output;
    }

    what_free(what);
    free_element(e);

    return Result();

error:
    free_element(e);
    return Result();

}


