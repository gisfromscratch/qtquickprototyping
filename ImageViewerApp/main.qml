import QtQuick 2.9
import QtQuick.Controls 2.5
import QtQuick.Window 2.2

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("Image Viewer")

    background: Rectangle {
        color: "darkGray"
    }

    Image {
        id: image
        anchors.fill: parent
        fillMode: Image.PreserveAspectFit
        asynchronous: true
    }
}
