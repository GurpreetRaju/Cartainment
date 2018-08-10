import QtQuick 2.9
import QtQuick.Controls 2.2
import QtMultimedia 5.4

Rectangle{
    id: cameraProps
    color: "#333"
    Camera {
        id: rearViewCamera
    }
    VideoOutput{
        source: rearViewCamera
        anchors.fill: parent
    }
}
