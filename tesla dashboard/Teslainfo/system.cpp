#include "system.h"

System::System(QObject *parent)
    : QObject{parent}
    ,m_carLocked(true)
    ,m_outdoorTemp(64)
    ,m_userName( "Kiity" )
{

}

bool System::carLocked() const
{
    return m_carLocked;
}

void System::setcarLocked(bool newCarLocked)
{
    if (m_carLocked == newCarLocked)
        return;
    m_carLocked = newCarLocked;
    emit carLockedChanged();
}

int System::outdoorTemp() const
{
    return m_outdoorTemp;
}

void System::setoutdoorTemp(int newOutdoorTemp)
{
    if (m_outdoorTemp == newOutdoorTemp)
        return;
    m_outdoorTemp = newOutdoorTemp;
    emit outdoorTempChanged();
}

QString System::userName() const
{
    return m_userName;
}

void System::setuserName(const QString &newUserName)
{
    if (m_userName == newUserName)
        return;
    m_userName = newUserName;
    emit userNameChanged();
}
