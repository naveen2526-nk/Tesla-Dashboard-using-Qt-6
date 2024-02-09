import QtQuick
import QtQuick.Window
import QtQuick.Controls
import QtQuick.Controls.Material
import "qrc:/ui/BottomBar"
import "qrc:/ui/RightScreen"
import "qrc:/ui/LeftScreen"


Window {
    id:window
    width: 1280
    height: 720
    visible: true
    title: qsTr("Tesla info")

    LeftScreen{
        id:leftScreen
    }

    RightScreen{
        id:rightScreen
    }

    BottomBar{
        id:bottomBar
    }

}
