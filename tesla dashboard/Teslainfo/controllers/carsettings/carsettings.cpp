#include "carsettings.h"

CarSettings::CarSettings(QObject *parent)
    : QObject{parent}
    ,m_carSettingsPopup(false)
{

}

bool CarSettings::carSettingsPopup() const
{
    return m_carSettingsPopup;
}

void CarSettings::setCarSettingsPopup(bool carSettingsPopup)
{
    if (m_carSettingsPopup == carSettingsPopup)
        return;
    m_carSettingsPopup = carSettingsPopup;
    emit carSettingsPopupChanged();
}
