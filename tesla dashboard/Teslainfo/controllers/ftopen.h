#ifndef FTOPEN_H
#define FTOPEN_H

#include <QObject>

class FTOpen : public QObject
{
    Q_OBJECT
    Q_PROPERTY(bool FTopen READ FTopen WRITE setFTopen NOTIFY FTopenChanged FINAL)
    Q_PROPERTY(bool FTopen2 READ FTopen2 WRITE setFTopen2 NOTIFY FTopen2Changed FINAL)
public:
    explicit FTOpen(QObject *parent = nullptr);

    bool FTopen() const;
    bool FTopen2() const;

public slots:
    void setFTopen(bool FTopen);
    void setFTopen2(bool FTopen2);


signals:

    void FTopenChanged();
    void FTopen2Changed();

private:
    bool m_FTopen;
    bool m_FTopen2;
};

#endif // FTOPEN_H
