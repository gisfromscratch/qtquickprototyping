import QtQuick 2.12
import QtQuick.Controls 2.12

ApplicationWindow {
    id: applicationWindow
    visible: true
    width: 640
    height: 480
    title: qsTr("Qt rocks")

    menuBar: MenuBar {
        Menu {
            title: qsTr("File")
            MenuItem {
                text: qsTr("&Open")
                onTriggered: console.log("Open action triggered");
            }
            MenuItem {
                text: qsTr("Exit")
                onTriggered: Qt.quit();
            }
        }
    }

    Row {
        id: rowLayout
        anchors.fill: parent

        TextField {
            id: userTextField
            text: qsTr("")
            anchors.top: parent.top
            anchors.topMargin: 50
            placeholderText: "Username"
            anchors.right: parent.right
            anchors.rightMargin: 50
            anchors.left: parent.left
            anchors.leftMargin: 50
            font.pointSize: 14
            font.family: "Verdana"
        }

        TextField {
            id: passTextField
            text: qsTr("")
            anchors.rightMargin: 50
            anchors.top: userTextField.bottom
            placeholderText: "Password"
            font.family: "Verdana"
            anchors.leftMargin: 50
            anchors.right: parent.right
            anchors.left: parent.left
            anchors.topMargin: 50
            font.pointSize: 14
        }

        Button {
            id: loginButton
            text: qsTr("Login")
            font.bold: true
            font.pointSize: 12
            font.family: "Verdana"
            anchors.right: parent.right
            anchors.rightMargin: 50
            anchors.left: parent.left
            anchors.leftMargin: 50
            anchors.top: passTextField.bottom
            anchors.topMargin: 50

            onClicked: {
                var user = userTextField.text;
                if ("user" === user) {
                    messageElement.text = "Login succeeded!"
                    rectangle.color = "#33a033";
                } else {
                    messageElement.text = "Login failed!"
                    rectangle.color = "#d03333";
                }
            }
        }

        Rectangle {
            id: rectangle
            height: 75
            color: "#00000000"
            anchors.right: parent.right
            anchors.rightMargin: 0
            anchors.left: parent.left
            anchors.leftMargin: 0
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 0

            Text {
                id: messageElement
                color: "#ffffff"
                text: qsTr("")
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.bold: true
                anchors.right: parent.right
                anchors.rightMargin: 50
                anchors.left: parent.left
                anchors.leftMargin: 50
                anchors.top: parent.top
                anchors.topMargin: 30
                font.family: "Verdana"
                font.pixelSize: 14
            }
        }
    }
}







































/*##^## Designer {
    D{i:6;anchors_x:220}D{i:7;anchors_x:220}D{i:9;anchors_width:200}D{i:5;anchors_height:400;anchors_width:200;anchors_x:237;anchors_y:55}
}
 ##^##*/
