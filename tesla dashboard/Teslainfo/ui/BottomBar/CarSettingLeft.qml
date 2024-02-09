import QtQuick
import QtQuick.Controls

Rectangle{
    id:leftScreen
    width:parent.width * 0.9/3
    height: parent.height
    radius: 10
    color: "light grey"
    border.color: "transparent"

    Rectangle{
        id:controls
        color: "transparent"
        border.color: " grey"
        radius: 10
        anchors{
            top: parent.top
            left: parent.left
        }
        width: parent.width
        height: parent.height * 1/11
        Image {
            id: cont
            source: "qrc:/ui/assets/control.png"
            fillMode: Image.PreserveAspectFit
            width: parent.width / 15
            y:20
            anchors{
                left:parent.left
                leftMargin: 70
            }
        }
        Text {
            id: cnt
            text: qsTr("Controls")
            anchors{
                right: parent.right
                centerIn: parent
            }
            y:15
            font.pixelSize: 15
            font.family: "Latin"
            font.bold: true
        }
    }
    Rectangle{
        id:pdandst
        color: "transparent"
        border.color: "grey"
        radius: 10
        y:57
        anchors{
            left: parent.left
        }
        width: parent.width
        height: parent.height * 1/11
        Image {
            id: pd
            source: "qrc:/ui/assets/pdt.png"
            fillMode: Image.PreserveAspectFit
            width: parent.width / 15
            y:20
            anchors{
                left:parent.left
                leftMargin: 70
            }
        }
        Text {
            id: st
            text: qsTr("Pedals & Steering")
            anchors{
                right: parent.right
                rightMargin: 35
            }
            y:20
            font.pixelSize: 15
            font.family: "Latin"
            font.bold: true
        }
    }
    Rectangle{
        id:charging
        color: "transparent"
        border.color: "grey"
        radius: 10
        y:114
        anchors{
            left: parent.left
        }
        width: parent.width
        height: parent.height * 1/11
        Image {
            id: chr
            source: "qrc:/ui/assets/chrg.png"
            fillMode: Image.PreserveAspectFit
            width: parent.width / 15
            y:20
            anchors{
                left:parent.left
                leftMargin: 70
            }
        }
        Text {
            id: ch
            text: qsTr("Charging")
            anchors{
                right: parent.right
                rightMargin: 99
            }
            y:20
            font.pixelSize: 15
            font.family: "Latin"
            font.bold: true
        }
    }
    Rectangle{
        id:autoPilot
        color: "transparent"
        border.color: "grey"
        radius: 10
        y:171
        anchors{
            left: parent.left
        }
        width: parent.width
        height: parent.height * 1/11
        Image {
            id: auto
            source: "qrc:/ui/assets/auto.png"
            fillMode: Image.PreserveAspectFit
            width: parent.width / 15
            y:20
            anchors{
                left:parent.left
                leftMargin: 70
            }
        }
        Text {
            id: ap
            text: qsTr("Auto Pilot")
            anchors{
                right: parent.right
                rightMargin: 95
            }
            y:20
            font.pixelSize: 15
            font.family: "Latin"
            font.bold: true
        }
    }
    Rectangle{
        id:locks
        color: "transparent"
        border.color: "grey"
        radius: 10
        y:228
        anchors{
            left: parent.left
        }
        width: parent.width
        height: parent.height * 1/11
        Image {
            id:lk
            source: "qrc:/ui/assets/lock1.png"
            fillMode: Image.PreserveAspectFit
            width: parent.width / 15
            y:20
            anchors{
                left:parent.left
                leftMargin: 70
            }
        }
        Text {
            id:lck
            text: qsTr(" Locks ")
            anchors{
                right: parent.right
                rightMargin: 123
            }
            y:20
            font.pixelSize: 15
            font.family: "Latin"
            font.bold: true
        }
    }
    Rectangle{
        id:lights
        color: "transparent"
        border.color: "grey"
        radius: 10
        y:285
        anchors{
            left: parent.left
        }
        width: parent.width
        height: parent.height * 1/11
        Image {
                    id: light
                    source: "qrc:/ui/assets/light.png"
                    fillMode: Image.PreserveAspectFit
                    width: parent.width / 10
                    y:15
                    anchors{
                        left:parent.left
                        leftMargin: 70
                    }
                }
                Text {
                    id: lt
                    text: qsTr(" Lights")
                    anchors{
                        right: parent.right
                        rightMargin: 123
                    }
                    y:20
                    font.pixelSize: 15
                    font.family: "Latin"
                    font.bold: true
                }
    }
    Rectangle{
        id:trips
        color: "transparent"
        border.color: "grey"
        radius: 10
        y:342
        anchors{
            left: parent.left
        }
        width: parent.width
        height: parent.height * 1/11
        Image {
                    id: tr
                    source: "qrc:/ui/assets/trip.png"
                    fillMode: Image.PreserveAspectFit
                    width: parent.width / 10
                    y:15
                    anchors{
                        left:parent.left
                        leftMargin: 70
                    }
                }
                Text {
                    id: tp
                    text: qsTr("Trips ")
                    anchors{
                        right: parent.right
                        rightMargin: 126
                    }
                    y:20
                    font.pixelSize: 15
                    font.family: "Latin"
                    font.bold: true
                }
    }
    Rectangle{
        id:navigation
        color: "transparent"
        border.color: "grey"
        radius: 10
        y:399
        anchors{
            left: parent.left
        }
        width: parent.width
        height: parent.height * 1/11
        Image {
                    id: nav
                    source: "qrc:/ui/assets/navigation.png"
                    fillMode: Image.PreserveAspectFit
                    width: parent.width / 15
                    y:20
                    anchors{
                        left:parent.left
                        leftMargin: 70
                    }
                }
                Text {
                    id: ng
                    text: qsTr(" Navigation")
                    anchors{
                        right: parent.right
                        rightMargin:89
                    }
                    y:20
                    font.pixelSize: 15
                    font.family: "Latin"
                    font.bold: true
                }
    }
    Rectangle{
        id:safety
        color: "transparent"
        border.color: "grey"
        radius: 10
        y:456
        anchors{
            left: parent.left
        }
        width: parent.width
        height: parent.height * 1/11
        Image {
                    id: safe
                    source: "qrc:/ui/assets/safety.png"
                    fillMode: Image.PreserveAspectFit
                    width: parent.width / 15
                    y:20
                    anchors{
                        left:parent.left
                        leftMargin: 70
                    }
                }
                Text {
                    id: sy
                    text: qsTr(" Safety ")
                    anchors{
                        right: parent.right
                        rightMargin: 120
                    }
                    y:20
                    font.pixelSize: 15
                    font.family: "Latin"
                    font.bold: true
                }
    }
    Rectangle{
        id:service
        color: "transparent"
        border.color: "grey"
        radius: 10
        y:513
        anchors{
            left: parent.left
        }
        width: parent.width
        height: parent.height * 1/11
        Image {
                    id: serv
                    source: "qrc:/ui/assets/service.png"
                    fillMode: Image.PreserveAspectFit
                    width: parent.width / 15
                    y:20
                    anchors{
                        left:parent.left
                        leftMargin: 70
                    }
                }
                Text {
                    id: se
                    text: qsTr(" Service")
                    anchors{
                        right: parent.right
                        rightMargin: 120
                    }
                    y:20
                    font.pixelSize: 15
                    font.family: "Latin"
                    font.bold: true
                }
    }
    Rectangle{
        id:software
        color: "transparent"
        border.color: "grey"
        radius: 10
        y:570
        anchors{
            left: parent.left
        }
        width: parent.width
        height: parent.height * 1/11
        Image {
                    id: sys
                    source: "qrc:/ui/assets/system.png"
                    fillMode: Image.PreserveAspectFit
                    width: parent.width / 15
                    y:20
                    anchors{
                        left:parent.left
                        leftMargin: 70
                    }
                }
                Text {
                    id: stm
                    text: qsTr(" System")
                    anchors{
                        right: parent.right
                        rightMargin: 120
                    }
                    y:20
                    font.pixelSize: 15
                    font.family: "Latin"
                    font.bold: true
                }
    }
}

