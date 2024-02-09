#include "hvachandler.h"

HVACHandler::HVACHandler(QObject *parent)
    : QObject{parent}
    ,m_targetTemperature(70)
{

}

int HVACHandler::targetTemperature() const
{
    return m_targetTemperature;
}

void HVACHandler::incrementTargetTemperature(const int &val)
{
    int newTargetTemp = m_targetTemperature + val;
    setTargetTemperature( newTargetTemp);
}

void HVACHandler::setTargetTemperature (int targetTemperature)
{
    if (m_targetTemperature == targetTemperature)
        return;
    m_targetTemperature = targetTemperature;
    emit targetTemperatureChanged();
}
