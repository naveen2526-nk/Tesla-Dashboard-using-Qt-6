import QtQuick

Item {
    property var hvacController

    width: 90 * ( parent.width / 1280 )

    Rectangle{
        id:decrementButtom
        anchors{
            left: parent.left
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
            onClicked: hvacController.incrementTargetTemperature( -1)
        }
    }
    Text {
        id: targetTempartureText
        text: hvacController.targetTemperature
        font.family: "Latin"
        anchors{
            left: decrementButtom.right
            leftMargin: 15
            verticalCenter: parent.verticalCenter

        }
        color: "#373737"
        font.pixelSize: 24
    }
    Rectangle{
        id:increamentButton
        anchors{
            left: targetTempartureText.right
            leftMargin: 15
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
            onClicked: hvacController.incrementTargetTemperature( 1)
        }
    }
}
