import QtQuick

Item {
    Connections{
        target: audioController
        function onVolumeLevelChanged(){
            visibleTime.stop()
            volumeIcon.visible = false
            visibleTime.start()
        }
    }
    Timer{
        id:visibleTime
        interval: 500
        repeat: false
        onTriggered: {
            volumeIcon.visible = true
        }
    }

    width: 127.45 * ( parent.width / 1280 )
    Rectangle{
        id:decrementButton
        anchors{
            right: volumeIcon.left
            rightMargin: 15
            top: parent.top
            bottom:parent.bottom
        }
        width: height / 2
        color: "black"
        Text{
            id:decrementText
            color: "#373737"
            anchors.centerIn: parent
            text: "<"
            font.pixelSize: 18
        }
        MouseArea{
            anchors.fill: parent
            onClicked: audioController.incrementVolume( -1)
        }
    }
    Image{
        id:volumeIcon
        fillMode: Image.PreserveAspectFit
        anchors{
            right: increamentButton.left
            rightMargin:  15
            verticalCenter: parent.verticalCenter
        }
        source: {
            if (audioController.volumeLevel <1 )
                return "qrc:/ui/assets/mute.png"
            else if (audioController.volumeLevel <=25 )
                return "qrc:/ui/assets/volume1.png"
            else if (audioController.volumeLevel <=90 )
                return "qrc:/ui/assets/volume2.png"
            else
                return "qrc:/ui/assets/volume3.png"
        }

    }
    Text {
        id: volumeNum
        text: audioController.volumeLevel
        visible: !volumeIcon.visible
        font.family: "Latin"
        anchors{
            left: decrementButton.right
            centerIn: volumeIcon
            leftMargin: 15
            verticalCenter: parent.verticalCenter

        }
        color: "#373737"
        font.pixelSize: 24
    }
    Rectangle{
        id:increamentButton
        anchors{
            right: parent.right
            top: parent.top
            bottom:parent.bottom
        }
        width: height / 2
        color: "black"
        Text{
            id:increamentText
            color: "#373737"
            anchors.centerIn: parent
            text: ">"
            font.pixelSize: 18
        }
        MouseArea{
            anchors.fill: parent
            onClicked: audioController.incrementVolume( 1)
        }
    }
}
