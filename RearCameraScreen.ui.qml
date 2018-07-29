import QtQuick 2.9
import QtQuick.Controls 2.2
import QtMultimedia 5.4

Item{
    id: cameraProps
    property int widthCamera
    property int heightCamera
    Camera {
        id: rearViewCamera
    }
    VideoOutput{
        source: rearViewCamera
        width: cameraProps.widthCamera
        height: cameraProps.heightCamera
    }
}
