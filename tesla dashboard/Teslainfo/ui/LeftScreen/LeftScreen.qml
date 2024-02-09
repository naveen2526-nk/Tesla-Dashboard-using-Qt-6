import QtQuick
import QtQuick.Controls
import QtQuick.Controls.Material
import "../BottomBar"

Rectangle{
    id: leftScreen
    anchors{
        left:parent.left
        right:rightScreen.left
        bottom: bottomBar.top
        top:parent.top
    }
    color:" white"
    Image{
        id:teslaCar
        anchors.centerIn: parent
        width:parent.width * 1.35
        fillMode: Image.PreserveAspectFit
        source:"qrc:/ui/assets/teslacar2.png"
    }

    ToolButton{
        width: 20
        y:260
        anchors{
            right: parent.right
            rightMargin: 20
        }
        background: Rectangle{
            color: "transparent"
        }

        Image {
            id: charge
            source: "qrc:/ui/assets/bolt.png"
            fillMode: Image.PreserveAspectFit
            anchors{
                centerIn: parent
            }
        }
        onClicked: {
            left.open();
            left.visible= true;
        }
        Popup{
            id:left
            width: 950
            height: 650
            modal: true
            visible:false
            x:-200
            y:-256
            z:50
            background: Rectangle{
                color:"white"
                radius: 15
            }

            Rectangle{
                width: parent.width
                height:parent.height
                color: "transparent"
                radius: 0
                CarSettingRight{
                    id:carSettingRight
                }
            }
            CarSettingLeft{
                id:carSettingLeft
            }
        }
    }

    Rectangle{
        id:frunk
        anchors{
            top: teslaCar.top
            left: parent.left
            leftMargin: 100
        }
        height: 130
        width: 2
        border.color: "light grey"
        Text {
            id: frunk1
            text: qsTr("Frunk")
            font.family: "classic"
            font.pixelSize: 13
            color: " light grey"
            anchors{
                top: frunk.top
                right:frunk.right
                rightMargin:5
            }
        }
        Rectangle{
            id: frunk2
            anchors{
                bottom: frunk1.bottom
                right:frunk.right
                rightMargin:50
            }
            Text {

                text: ftopen2.FTopen2 ? qsTr("Open") : qsTr("Opened")
                font.family: "Times"
                font.pixelSize: 13
                font.bold: true
                color: " grey"
                MouseArea{
                    anchors.fill: parent
                    onClicked: {
                        ftopen2.setFTopen2(!ftopen2.FTopen2);
                    }
                }
            }
        }
    }
    Rectangle{
        id:trunk
        y:100
        anchors{
            top:teslaCar.top
            right: parent.right
            rightMargin: 68
        }
        height: 75
        width: 1
        border.color: " light grey"
        Text {
            id: trunk1
            text: qsTr("Trunk")
            font.family: "classic"
            font.pixelSize: 13
            color: " light grey"
            anchors{
                top: trunk.top
                right:trunk.right
                rightMargin:5
            }
        }
        Rectangle{
            id: trunk2
            anchors{
                bottom:trunk1.bottom
                right:trunk.right
                rightMargin:50
            }
            Text {

                text: ftopen.FTopen ? qsTr("Open") : qsTr("Opened")
                font.family: "classic"
                font.pixelSize: 13
                font.bold:true
                color: " grey"
                MouseArea{
                    anchors.fill: parent
                    onClicked: {
                        ftopen.setFTopen(!ftopen.FTopen);
                    }
                }

            }
        }
    }
    Rectangle{
        id:lock
        height: 75
        width:1
        border.color: "light  grey"
        anchors{
            right: parent.right
            rightMargin: 175
            top: teslaCar.top
        }
        Rectangle{
            y:-25
            x:-10
            Image {
                id:lockIcon
                width: 20
                fillMode: Image.PreserveAspectFit
                source: ( system.carLocked ? "qrc:/ui/assets/lock.png" : "qrc:/ui/assets/unlock.png")
                MouseArea{
                    anchors.fill: parent
                    onClicked: {
                        system.setCarLocked( !system.carLocked );}
                }
            }
        }

    }


}
