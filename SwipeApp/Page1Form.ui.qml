import QtQuick 2.9
import QtQuick.Controls 2.2

Page {
    width: 600
    height: 400
    property alias textField: textField

    header: Label {
        text: qsTr("Page 1")
        font.pixelSize: Qt.application.font.pixelSize * 2
        padding: 10
    }

    Grid {
        id: grid
        anchors.rightMargin: 50
        anchors.leftMargin: 50
        anchors.bottomMargin: 50
        anchors.topMargin: 50
        rows: 2
        columns: 1
        anchors.fill: parent

        Label {
            id: label
            text: qsTr("Label")
            horizontalAlignment: Text.AlignLeft
        }

        TextField {
            id: textField
            text: qsTr("Text Field")
        }
    }
}



/*##^## Designer {
    D{i:2;anchors_height:400;anchors_width:400;anchors_x:67;anchors_y:6}
}
 ##^##*/
