import QtQuick
import QtQuick.Controls
import QtLocation
import QtPositioning

Rectangle{
    id:rightScreen
    width:parent.width * 1.96/3
    color:"grey"
    anchors{
        top: parent.top
        bottom:bottomBar.bottom
        right:parent.right
    }
    Plugin {
        id: mapPlugin
        name: "osm"
    }

    Image {
        id:lockIcon
        anchors{
            left:parent.left
            top:parent.top
            margins: 20
        }
        width: parent.width / 40
        fillMode: Image.PreserveAspectFit
        source: ( system.carLocked ? "qrc:/ui/assets/lock.png" : "qrc:/ui/assets/unlock.png")
        MouseArea{
            anchors.fill: parent
            onClicked: {
                system.setCarLocked( !system.carLocked );}
        }
    }
    Text {
        id: timer
        anchors{
            left: lockIcon.right
            leftMargin: 40
            bottom: lockIcon.bottom
        }
        font.pixelSize: 14
        font.bold: true
        color:"light grey"
        font.family: "Latin"
        text: system.currentTime
    }
    Text {
        id: outdoorTempt
        anchors{
            left: timer.right
            leftMargin: 38
            bottom: timer.bottom
        }
        font.pixelSize: 14
        font.bold: true
        color:"light grey"
        font.family: "Latin"
        text: system.outdoorTemp + "°F"
    }
    Text {
        id: userName
        anchors{
            left: outdoorTempt.right
            leftMargin: 38
            bottom: outdoorTempt.bottom
        }
        font.pixelSize: 14
        font.bold: true
        color:"light grey"
        font.family: "Latin"
        text: system.userName
    }

    Navigationbar{
        id:navisearchBar
        width:parent.width * 1/3
        height:parent.height * 1/13
        anchors{
            left: lockIcon.left
            top: lockIcon.bottom
            topMargin: 15
        }
    }



}
