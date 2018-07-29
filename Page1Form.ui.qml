import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Controls.Material 2.0

Page {
    width: screen.Width
    height: screen.Height
    property string titleScreen
    property string itemList
    Row {
        id: templateList
        x: 0
        y: 0
        width: 600
        height: 400
        Row {
            id: top_bar
            width: 600
            padding: 5
            Button {
                id: back
                text: qsTr("Back")
            }
            Text {
                id: titleText
                text: qsTr("Title")
                font.pixelSize: 16
            }
        }
        Row {
            id: wrapper
            padding: 20
            Rectangle {
                id: item
                Text {
                    text: templateList.itemList
                }
            }
        }
    }
}

/*##^## Designer {
    D{i:4;anchors_y:0}
}
 ##^##*/
