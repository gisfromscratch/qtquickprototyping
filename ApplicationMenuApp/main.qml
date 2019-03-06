import QtQuick 2.9
import QtQuick.Window 2.3
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("Application menu")

    Action {
        id: actionNew
        text: qsTr("&New")
        shortcut: StandardKey.New
        icon.color: "transparent"
        icon.name: "document-new"
        icon.source: "document-new.png"
        onTriggered: textArea.text = "New file"
    }

    menuBar: MenuBar {
        Menu {
            title: qsTr("File")
            MenuItem {
                action: actionNew
            }
        }
    }

    header: ToolBar {
        RowLayout {
            ToolButton {
                action: actionNew
            }
        }
    }

    TextArea {
        id: textArea
        anchors.fill: parent
    }
}
