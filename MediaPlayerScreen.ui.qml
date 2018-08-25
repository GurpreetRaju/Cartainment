import QtQuick 2.4
import QtMultimedia 5.8
import QtQuick.Controls 1.4

Rectangle {
    id: rectangle
    color: "#ffffff"

    Image {
        id: image
        x: 0
        y: 0
        width: parent.width
        height: (parent.height - mediaControls.height)
        source: "img/musicwallpaper.jpg"
    }

    MediaPlayer{
        id: mediaPlayer
    }

    Rectangle{
        id: mediaControls
        width: parent.width
        height: 60
        color: "#202020"
        x: 0
        y: (parent.height - 60)
        Button {
            id: button
            x: 15
            y: 20
            text: qsTr("Play")
        }

        Button {
            id: button1
            x: 92
            y: 20
            text: qsTr("Pause")
        }

        Button {
            id: button2
            x: 169
            y: 20
            text: qsTr("Stop")
        }

        Button {
            id: button3
            x: 246
            y: 20
            text: qsTr("Prev")
        }

        Button {
            id: button4
            x: 323
            y: 20
            text: qsTr("Next")
        }

        Button {
            id: button5
            x: 548
            y: 20
            text: qsTr("Library")
        }

        Slider {
            id: sliderHorizontal
            x: 468
            y: 20
            width: 74
            height: 20
        }

        Button {
            id: button6
            x: 400
            y: 20
            width: 67
            height: 25
            text: qsTr("Mute")
        }

        ProgressBar {
            id: progressBar
            x: 15
            y: 10
            width: 610
            height: 4
        }
    }

}
