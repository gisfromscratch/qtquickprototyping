import QtQuick 2.0

Item {

    property int type: 0

    Image {
        id: img
        anchors.fill: parent        
        source: {
            switch (type) {
            case 0:
                return "qrc:///images/shared/pics/redStone.png";
            case 1:
                return "qrc:///images/shared/pics/greenStone.png";
            default:
                return "qrc:///images/shared/pics/blueStone.png";
            }
        }
    }
}
