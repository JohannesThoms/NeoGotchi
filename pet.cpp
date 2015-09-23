#include "pet.h"


Pet::Pet(QObject *parent) :
    QObject(parent)
{
    m_health=0;
}

void Pet::setHealth(double health)
{
    m_health += health;
    qDebug() << "setHealth(" << m_health << ")";
    emit healthChanged(health);
}
