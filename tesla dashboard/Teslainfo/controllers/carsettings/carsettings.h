#ifndef CARSETTINGS_H
#define CARSETTINGS_H

#include <QObject>

class CarSettings : public QObject
{
    Q_OBJECT
    Q_PROPERTY(bool carSettingsPopup READ carSettingsPopup WRITE setCarSettingsPopup NOTIFY carSettingsPopupChanged FINAL)
public:
    explicit CarSettings(QObject *parent = nullptr);

    Q_INVOKABLE bool carSettingsPopup() const;
    void setCarSettingsPopup(bool carSettingsPopup);

signals:

    void carSettingsPopupChanged();
private:
    bool m_carSettingsPopup;
};

#endif // CARSETTINGS_H
