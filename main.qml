import QtQuick.Window 2.1
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.11
import QtQuick.Controls 1.4
import QtQuick 2.9

ApplicationWindow {
    id: mainWindow
    visible: true
    width: 800
    height: 600
    title: qsTr("Cartainment System")


    ColumnLayout {
        id: columnLayout
        width: parent.width
        height: parent.height

        ToolBar{
            Layout.preferredHeight: 30
            Layout.preferredWidth: parent.width

            Button{
                id: backButton
                height: parent.height
                text: "Back"
                onClicked: if (wrapper.state != "mainScreen"){
                                wrapper.state = "mainScreen"
                           }
            }
        }
        Rectangle{
            id: wrapper
            Layout.preferredWidth: parent.width
            Layout.preferredHeight: (parent.height - 30)
            state: "mainScreen"

            states: [
                State {
                    name: "mainScreen"
                    PropertyChanges { target: mainMenu; visible: true }
                    PropertyChanges { target: rearCameraScreen; visible: false }
                    PropertyChanges { target: mediaPlayerScreen; visible: false }
                    PropertyChanges { target: backButton; visible: false }

                },
                State {
                    name: "rearCameraScreen"
                    PropertyChanges { target: mainMenu; visible: false }
                    PropertyChanges { target: rearCameraScreen; visible: true }
                    PropertyChanges { target: mediaPlayerScreen; visible: false }
                    PropertyChanges { target: backButton; visible: true }
                },
                State {
                    name: "mediaPlayerScreen"
                    PropertyChanges { target: mainMenu; visible: false }
                    PropertyChanges { target: rearCameraScreen; visible: false }
                    PropertyChanges { target: mediaPlayerScreen; visible: true }
                    PropertyChanges { target: backButton; visible: true }
                }
            ]

            Item{
                id: mainMenu
                anchors.fill: parent

                GridLayout{
                    anchors.fill: parent
                    columns: 3
                    rows: 2
                    columnSpacing: 10
                    rowSpacing: 10

                    Button {
                        Layout.fillWidth: true
                        Layout.fillHeight: true
                        id: mediaplayerButton
                        onClicked: wrapper.state = "mediaPlayerScreen"
                        Image {
                            id: mpImageTag
                            anchors.horizontalCenter: parent.horizontalCenter
                            width: parent.width - 20
                            height: parent.height - 30
                            fillMode: Image.PreserveAspectFit
                            source: "img/mediaIcon.png"
                        }
                        Text {
                            id: mpTextTag
                            verticalAlignment: Text.AlignVCenter
                            anchors.top: mpImageTag.bottom
                            anchors.horizontalCenter: parent.horizontalCenter
                            font.pixelSize: 16
                            text: qsTr("Jukebox")
                        }
                    }
                    Button {
                        Layout.fillWidth: true
                        Layout.fillHeight: true
                        id: rearCameraButton
                        onClicked: wrapper.state = "rearCameraScreen"

                        Image {
                            id: rcImageTag
                            anchors.horizontalCenter: parent.horizontalCenter
                            width: parent.width - 20
                            height: parent.height - 30
                            fillMode: Image.PreserveAspectFit
                            source: "img/parkingIcon"
                        }
                        Text {
                            id: rcTexTtag
                            verticalAlignment: Text.AlignVCenter
                            anchors.top: rcImageTag.bottom
                            anchors.horizontalCenter: parent.horizontalCenter
                            font.pixelSize: 16
                            text: qsTr("Rear Camera")
                        }
                    }
                    Button{
                        Layout.fillWidth: true
                        Layout.fillHeight: true
                        id: safetyCameraButton
                        Image {
                            id: scImageTag
                            anchors.horizontalCenter: parent.horizontalCenter
                            width: parent.width - 20
                            height: parent.height - 30
                            fillMode: Image.PreserveAspectFit
                            source: "img/cameraIcon.png"
                        }
                        Text {
                            id: scTextTag
                            verticalAlignment: Text.AlignVCenter
                            anchors.top: scImageTag.bottom
                            anchors.horizontalCenter: parent.horizontalCenter
                            font.pixelSize: 16
                            text: qsTr("Safety Camera")
                        }
                    }
                    Button{
                        Layout.fillWidth: true
                        Layout.fillHeight: true
                        id: settingsButton
                        Image {
                            id: sImageTag
                            anchors.horizontalCenter: parent.horizontalCenter
                            width: parent.width - 20
                            height: parent.height - 30
                            fillMode: Image.PreserveAspectFit
                            source: "img/settingsIcon.png"
                        }
                        Text {
                            id: sTextTag
                            verticalAlignment: Text.AlignVCenter
                            font.pixelSize: 16
                            text: qsTr("Settings")
                            anchors.horizontalCenter: parent.horizontalCenter
                            anchors.top: sImageTag.bottom
                        }
                    }
                }
            }
            RearCameraScreen{
                id: rearCameraScreen
                anchors.fill: parent
            }

            MediaPlayerScreen{
                id: mediaPlayerScreen
                anchors.fill: parent
            }

        }

    }

}
