import QtQuick
import QtQuick.Controls

Window {
    id: mainwindow
    width: 1900
    height: 1060
    visible: true
    color: "#FBF8EF"
    title: qsTr("Project management")

    Rectangle {
        id: topBar
        color: "#A1EEBD"
        height: 30
        width: parent.width
        anchors.top: parent.top
    }

    Button {
        id: addButton
        height: 25
        width: 25
        anchors.top: parent
        anchors.left: parent
        anchors.leftMargin: 5
        Rectangle {
            height: parent.height
            width: parent.width
            anchors.top: parent
            anchors.left: parent
            color: "transparent"
            border.color: "transparent"

            Text {
                id: addText
                text: "+"
                color: "black"
                anchors.centerIn: parent
                font.pointSize: 10
            }
        }
        MouseArea {
            id: addMouse
            anchors.fill: parent
            hoverEnabled: true
            cursorShape: Qt.PointingHandCursor

            onClicked: {

            }
        }
    }
//---------------------------------------------------------------------------NOTE-----------------------------------------------------------------------------------
    Rectangle {
        id: project1
        height: 200
        width: 400
        anchors.left: parent.left
        anchors.leftMargin: 20
        anchors.top: topBar.bottom
        anchors.topMargin: 20
        color: "white"
        radius: 15
        border.color: "black"

        Rectangle {
            id: project1bar
            width: parent.width
            height: 40
            color: "#22177A"
            anchors.top: parent
            radius: 15

            MouseArea {
                id: bar1Area
                anchors.fill: parent
                hoverEnabled: true
                cursorShape: Qt.PointingHandCursor
            }
        }

        Rectangle
        {
            id:splitBar
            anchors.bottom: project1.bottom
            anchors.top: project1bar.bottom
            width:2
            color:"gray"
            anchors.horizontalCenter: parent.horizontalCenter
        }
        Text
        {
            id:todo
            text:"To Do"
            color:"black"
            font.pointSize: 12
            anchors.horizontalCenter: parent.left
            anchors.horizontalCenterOffset: splitBar.x / 2
            anchors.top: project1.bottom
            anchors.topMargin: 15
        }
        Text {
            id: done
            text: "Done"
            color: "black"
            font.pointSize: 12
            anchors.top: parent.top
            anchors.topMargin: 15

            // Wyśrodkowanie tekstu pomiędzy prawą stroną project1 a splitBar
            anchors.right: project1.right
            anchors.left: splitBar.right
        }
    }
}
