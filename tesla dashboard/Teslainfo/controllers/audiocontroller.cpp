#include "audiocontroller.h"
#include <QDebug>
AudioController::AudioController(QObject *parent)
    : QObject{parent}
    ,m_volumeLevel(1)
{

}

int AudioController::volumeLevel() const
{
    return m_volumeLevel;
}

void AudioController::setVolumeLevel(int volumeLevel)
{
    if (m_volumeLevel == volumeLevel)
        return;
    m_volumeLevel = volumeLevel;
    emit volumeLevelChanged();
}

void AudioController::incrementVolume(const int &val)
{

    int newVolume = m_volumeLevel + val;

    if (newVolume <= 0)
        newVolume = 0;
    if (newVolume >=100)
        newVolume = 100;

    setVolumeLevel(newVolume);
}
