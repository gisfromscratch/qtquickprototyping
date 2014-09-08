import QtQuick 2.0

import "BubbleGameScripting.js" as BubbleGameEngine

Rectangle {
    id: screen

    width: 490; height: 720

    SystemPalette { id: activePalette }

    Item {
        width: parent.width
        anchors { top: parent.top; bottom: toolBar.top }

        Image {
            id: background
            anchors.fill: parent
            source: "qrc:///images/shared/pics/background.jpg"
            fillMode: Image.PreserveAspectCrop
        }

        // The game canvas
        Item {
            id: gameCanvas

            property int score: 0
            property int blockSize: 40

            width: parent.width - (parent.width % blockSize)
            height: parent.height - (parent.height % blockSize)
            anchors.centerIn: parent

            MouseArea {
                anchors.fill: parent
                onClicked: BubbleGameEngine.handleClick(mouse.x, mouse.y)
            }
        }
    }

    GameDialog {
        id: dialog
        anchors.centerIn: parent
        z: 100
    }

    Rectangle {
        id: toolBar
        width: parent.width; height: 30
        color: activePalette.window
        anchors.bottom: screen.bottom

        StartButton {
            anchors { left: parent.left; verticalCenter: parent.verticalCenter }
            text: "New Game"
            onClicked: {
                console.log("This doesn't do anything yet...");
                BubbleGameEngine.startNewGame();
            }
        }

        Text {
            id: score
            anchors { right: parent.right; verticalCenter: parent.verticalCenter }
            text: "Score: Who knows?"
        }
    }
}
