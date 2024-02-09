import QtQuick

Rectangle{
    id:navisearchBar
    radius: 5
    color: "light grey"

    Image {
        id: searchIcon
        anchors{
            left: parent.left
            leftMargin: 20
            verticalCenter: parent.verticalCenter
        }
        height: parent.height * .40
        fillMode: Image.PreserveAspectFit
        source: "qrc:/ui/assets/search.png"
    }
    Text{
        id:navigationPlaceHolder
        color: Qt.rgba(0.1,0.1,0.1,0.3)
        text: "Navigate"
        visible: navigationTextInput.text === ""
        anchors{
            verticalCenter: parent.verticalCenter
            centerIn: parent
            left: searchIcon.right
            leftMargin: 20
        }
        font.pixelSize: 16
        font.bold: true
        font.family: "Latin"
    }
    TextInput{
        id:navigationTextInput
        clip: true
        anchors{
            top: parent.top
            bottom: parent.bottom
            right: parent.right
            left: searchIcon.right
            leftMargin: 20
        }
        verticalAlignment: Text.AlignVCenter
        font.pixelSize: 16
        font.family: "Latin"
    }
}
