import QtQuick 2.9
import QtQuick.Window 2.3
import QtQuick.Controls 2.3
import QtQuick.Controls.Material 2.3

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Material.theme: Material.Dark
    Material.accent: Material.Purple

    Column {
           anchors.centerIn: parent

           RadioButton { text: qsTr("Small") }
           RadioButton { text: qsTr("Medium");  checked: true }
           RadioButton { text: qsTr("Large") }
       }
}
