import QtQuick.Layouts 1.11
import QtQuick 2.0

Item {
    id: wrapper
    GridLayout{
        anchors.fill: parent
        columns: 3
        rows: 2
        columnSpacing: 10
        rowSpacing: 10

        Rectangle{
            Layout.fillWidth: true
            Layout.fillHeight: true

            id: mediaplayer
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
            MouseArea{
                anchors.fill: parent
                acceptedButtons: Qt.LeftButton
                onClicked: parent.color = 'blue';
            }
        }
        Rectangle{
            Layout.fillWidth: true
            Layout.fillHeight: true
            id: rearCamera
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
            MouseArea{
                anchors.fill: parent
                acceptedButtons: Qt.LeftButton
                onClicked: parent.color = 'blue';
            }
        }
        Rectangle{
            Layout.fillWidth: true
            Layout.fillHeight: true
            id: safetyCamera
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
            MouseArea{
                anchors.fill: parent
                acceptedButtons: Qt.LeftButton
                onClicked: parent.color = 'blue';
            }
        }
        Rectangle{
            Layout.fillWidth: true
            Layout.fillHeight: true
            id: settings
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
            MouseArea{
                anchors.fill: parent
                acceptedButtons: Qt.LeftButton
                onClicked: parent.color = 'blue';
            }
        }
    }
}
