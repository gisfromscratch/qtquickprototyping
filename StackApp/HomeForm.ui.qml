import QtQuick 2.9
import QtQuick.Controls 2.2

Page {
    id: page
    width: 600
    height: 400

    title: qsTr("Home")

    Label {
        text: qsTr("You are on the home page.")
        anchors.left: parent.left
        anchors.leftMargin: 234
        anchors.top: parent.top
        anchors.topMargin: 194
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 194
        anchors.right: parent.right
        anchors.rightMargin: 235
    }
}
