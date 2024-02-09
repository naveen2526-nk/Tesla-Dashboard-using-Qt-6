#include "ftopen.h"

FTOpen::FTOpen(QObject *parent)
    : QObject{parent}
    , m_FTopen(true)
    , m_FTopen2(true)
{

}

bool FTOpen::FTopen() const
{
    return m_FTopen;
}

void FTOpen::setFTopen(bool FTopen)
{
    if (m_FTopen == FTopen)
        return;
    m_FTopen = FTopen;
    emit FTopenChanged();
}

bool FTOpen::FTopen2() const
{
    return m_FTopen2;
}

void FTOpen::setFTopen2(bool FTopen2)
{
    if (m_FTopen2 == FTopen2)
        return;
    m_FTopen2 = FTopen2;
    emit FTopen2Changed();
}
