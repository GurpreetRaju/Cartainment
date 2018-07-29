import QtQuick 2.9
import QtQuick.Controls 2.2

ApplicationWindow {
    id: mainWindow
    visible: true
    width: screen.width
    height: screen.height
    title: qsTr("Cartainment System")
    RearCameraScreen{
        widthCamera: mainWindow.width
        heightCamera: mainWindow.height
    }
}
