import QtQuick 2.0
import QtQuick.Controls 1.1
import QtQuick.Layouts 1.1

ApplicationWindow {

    menuBar: MenuBar {
            Menu { MenuItem {} }
            Menu { MenuItem {} }
        }


    toolBar: ToolBar {
        RowLayout {
            anchors.fill: parent
            ToolButton {
            }
        }
    }

    statusBar: StatusBar {
    }

    width: 360
    height: 360
    Text {
        text: qsTr("Hello World")
        anchors.centerIn: parent
    }
    MouseArea {
        anchors.fill: parent
        onClicked: {
            Qt.quit();
        }
    }

    visible: true
}
