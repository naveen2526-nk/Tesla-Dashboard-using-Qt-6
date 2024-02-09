import QtQuick
import QtQuick.Controls
import QtQuick.Controls.Material
import QtQuick.Layouts

Rectangle{
        id:bottomBar
        anchors{
            left: parent.left
            right: parent.right
            bottom:parent.bottom
        }
        color:"black"
        height: parent.height / 11

        ToolButton {
            id: carIcon
            Image{
                source: "qrc:/ui/assets/car.png"
                anchors.centerIn: parent
            }
            anchors{
                left:parent.left
                leftMargin: 30
                verticalCenter: parent.verticalCenter
            }
            height: parent.height * 1/2
            width: parent.width * 1/14
            background: Rectangle {
                color:"black"
            }
            onClicked: {
                stack.open();
                stack.visible = true;
            }
        }
        Popup{
            id:stack
            width: 950
            height: 650
            modal: true
            visible:false
            x:200
            y:-650
            z:50
            background: Rectangle{
                color:"white"
                radius: 15
            }

            Rectangle{
                width: parent.width
                height:parent.height
                color: "transparent"
                radius: 5
                CarSettingRight{
                    id:carSettingRight
                }
            }
            CarSettingLeft{
                id:carSettingLeft
            }



        }



        HVACComponent{
            id:driverHVACControl
            anchors{
                top:parent.top
                bottom:parent.bottom
                left:carIcon.right
                leftMargin: 50
            }
            hvacController: driverHVAC
        }

        Rectangle{
            id:centerIcons
            anchors.centerIn: parent
            width: parent.width * .35
            height: parent.height
            color: "black"
            ToolButton{
                id:menuIcon
                Image{
                    source: "qrc:/ui/assets/menu.png"
                    fillMode: Image.PreserveAspectCrop
                    anchors.centerIn: parent

                }
                anchors{
                    left: parent.left
                    leftMargin: 40
                    centerIn: parent
                    top: parent.top
                    bottom: parent.bottom
                }
                onClicked: {
                    menu.open();

                }

            }
            Popup{
                id: menu
                modal: true
                width: 400
                height: 100
                visible: false
                x:30
                y:-150
                background: Rectangle{
                    color: "transparent"
                }

                Rectangle {
                    width: parent.width
                    height: parent.height
                    color: "light grey"
                    radius: 10
                    Rectangle{
                        id:dial
                        width: parent.width * 0.5/3
                        height: parent.height
                        color:"transparent"
                        radius: 10
                        ToolButton {
                            width:parent.width * 2/3
                            height:parent.height
                            background: Rectangle{
                                color: "transparent"
                            }
                            anchors{
                                centerIn: parent
                                top: parent.top
                                bottom:parent.bottom
                            }
                            Image{
                                source: "qrc:/ui/assets/telephone.png"
                                fillMode: Image.PreserveAspectFit
                                anchors.centerIn: parent
                                width: parent.width
                            }
                            onClicked: {

                            }
                        }
                    }
                    Rectangle{
                        id:calendar
                        color:"transparent"
                        width: parent.width * 0.5/3
                        height:parent.height
                        anchors{
                            left: parent.left
                            leftMargin: 63
                        }
                        radius:10
                        ToolButton{
                            width:parent.width * 2/3
                            height:parent.height
                            background: Rectangle{
                                color: "transparent"
                            }
                            Image {
                                source: "qrc:/ui/assets/calendar.png"
                                fillMode: Image.PreserveAspectFit
                                anchors.centerIn: parent
                                width: parent.width
                            }
                            anchors{
                                centerIn: parent
                                top: parent.top
                                bottom:parent.bottom

                            }
                            onClicked: {
                                console.log("hi")
                            }
                        }
                    }
                    Rectangle{
                        id:music
                        width: parent.width * 0.5/3
                        height:parent.height
                        anchors{
                            left: parent.left
                            leftMargin: 125
                        }
                        radius:10
                        color:"transparent"
                        ToolButton{
                            width:parent.width * 2/3
                            height:parent.height
                            background: Rectangle{
                                color: "transparent"
                            }
                            Image {
                                source: "qrc:/ui/assets/music.png"
                                fillMode: Image.PreserveAspectFit
                                anchors.centerIn: parent
                                width: parent.width
                            }
                            anchors{
                                right: parent.right
                                top: parent.top
                                bottom:parent.bottom

                            }
                            onClicked: {
                                console.log("hih")
                            }
                        }
                    }
                    Rectangle{
                        id:media
                        width: parent.width * 0.5/3
                        height:parent.height
                        anchors{
                            left: parent.left
                            leftMargin: 187
                        }
                        radius:10
                        color:"transparent"
                        ToolButton{
                            width:parent.width * 2/3
                            height:parent.height
                            background: Rectangle{
                                color: "transparent"
                            }
                            Image {
                                source: "qrc:/ui/assets/media.png"
                                fillMode: Image.PreserveAspectFit
                                anchors.centerIn: parent
                                width: parent.width
                            }
                            anchors{
                                right: parent.right
                                top: parent.top
                                bottom:parent.bottom

                            }
                            onClicked: {
                                console.log("ss")
                            }
                        }
                    }
                    Rectangle{
                        id:connections
                        width: parent.width * 0.5/3
                        height:parent.height
                        anchors{
                            left: parent.left
                            leftMargin: 249
                        }
                        radius:10
                        color:"transparent"
                        ToolButton{
                            width:parent.width * 2/3
                            height:parent.height
                            background: Rectangle{
                                color: "transparent"
                            }
                            Image {
                                source: "qrc:/ui/assets/connections.png"
                                fillMode: Image.PreserveAspectFit
                                anchors.centerIn: parent
                                width: parent.width
                            }
                            anchors{
                                right: parent.right
                                top: parent.top
                                bottom:parent.bottom

                            }
                            onClicked: {
                                console.log("hih")
                            }
                        }
                    }
                    Rectangle{
                        id:account
                        width: parent.width * 0.5/3
                        height:parent.height
                        anchors{
                            left: parent.left
                            leftMargin: 311
                        }
                        radius:10
                        color:"transparent"
                        ToolButton{
                            width:parent.width * 2/3
                            height:parent.height
                            background: Rectangle{
                                color: "transparent"
                            }
                            Image {
                                source: "qrc:/ui/assets/profile.png"
                                fillMode: Image.PreserveAspectFit
                                anchors.centerIn: parent
                                width: parent.width
                            }
                            anchors{
                                right: parent.right
                                top: parent.top
                                bottom:parent.bottom

                            }
                            onClicked: {
                                console.log("hh")
                            }
                        }
                    }
                }
            }
        }

        HVACComponent{
            id:passengerHVACControl
            anchors{
                top:parent.top
                bottom:parent.bottom
                right:parent.right
                rightMargin: 250
            }
            hvacController: passengerHVAC
        }
        VolumeControlComponent{
            id:volumeControl
            anchors{
                right:parent.right
                rightMargin: 30
                top: parent.top
                bottom: parent.bottom
            }

        }
}
