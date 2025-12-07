import QtQuick
import QtQuick.Controls 2.15

Window {
    id: window
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Button {
        id: button
        width: 80
        height: 80
        anchors.left: parent.left
        anchors.top: parent.top
    }
}
