#pragma once
#include <QObject>
#include <QDebug>


class Pet: public QObject
{
    Q_OBJECT
public:
    explicit Pet(QObject *parent = 0);

    Q_PROPERTY(double health READ health WRITE setHealth NOTIFY healthChanged)

public:
    double health() const { return m_health; }

public Q_SLOTS:
    void setHealth(double health);

Q_SIGNALS:
    void healthChanged(double health);

private:
    double m_health;

};
