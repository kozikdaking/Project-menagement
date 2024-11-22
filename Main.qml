import QtQuick
import QtQuick.Controls
import QtQuick.Effects
Window {
    id: mainwindow
    width: 1900
    height: 1060
    visible: true
    color: "#F5F5F5"
    title: qsTr("Project management")

    Rectangle {
        id: topBar
        color: "#A1EEBD"
        height: 30
        width: parent.width
        anchors.top: parent.top
    }
//-----------------------------------------------------------------------------NEW PROJECT----------------------------------------------------------------------------
    Rectangle
    {
        id:createRect
        height:400
        width:600
        color:"white"
        anchors.centerIn: parent
        radius:20
        z:1
        Text
        {
            id:createTitle
            text:"Create Dashboard"
            font.pointSize: 20
            anchors.left: parent.left
            anchors.leftMargin: 20
            anchors.top: parent.top
            anchors.topMargin: 20
        }
        Text
        {
            id:dashboardName
            text:"Dashboard name"
            anchors.top: createTitle.bottom
            anchors.topMargin: 15
            font.pointSize: 12
            color:"gray"
            anchors.left:parent.left
            anchors.leftMargin: 20
        }
        TextField
        {
            id:textField1
            height:40
            width:parent.width-150
            placeholderText: "Dashboard Text..."
            anchors.top: dashboardName.bottom
            anchors.topMargin: 10
            anchors.left: parent.left
            anchors.leftMargin: 20

            background:Rectangle
            {
                id:textFieldRect
                anchors.fill: parent
                color:"white"
                border.color: "gray"
                radius:12
            }
}
        Button
        {
            id:cancelButton
            height:70
            width:130
            anchors.right: createButton.left
            anchors.rightMargin: 20
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 20
            flat:true
            Text
            {
                text:"Cancel"
                font.pointSize: 20
                anchors.centerIn: parent
            }
        }
        Button
        {
            id:createButton
            height:70
            width:170
            anchors.right:parent.right
            anchors.bottom: parent.bottom
            anchors.rightMargin: 20
            anchors.bottomMargin:20
    flat:true
            Rectangle
            {
                color:"blue"
                anchors.fill:parent
                height:parent.height
                width:parent.width
                radius:15
                Text
                {
                    id:buttonText
                    text:"Create"
                    color:"white"
                    font.pointSize: 15
                    anchors.centerIn: parent
                }
            }
        }
    }

//-----------------------------------------------------------------------------NEW PROJECT----------------------------------------------------------------------------

Rectangle
{
    id:split1
    height:parent.height-30
    width:3
    anchors.top: topBar.bottom
    anchors.left: parent.left
    anchors.leftMargin: 633
    color:"#EEEEEE"
}
Rectangle
{
    id:split2
    height:parent.height-30
    width:3
    anchors.top: topBar.bottom
    anchors.left: parent.left
    anchors.leftMargin: 1266
    color:"#EEEEEE"
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
            height: 20
            color: "#8FD14F"
            anchors.top: parent
            radius: 10

            Button
            {
                id:addBox
                height:25
                width:25
                anchors.left: parent.left
                anchors.top:parent.top
                text:"+"
                flat:true
            }

            MouseArea {
                id: bar1Area
                anchors.fill: parent
                hoverEnabled: true
                cursorShape: Qt.PointingHandCursor
            }
        }
        CheckBox
            {
                id:toDoBox
                anchors.left: project1.left
                anchors.top:project1.top
                anchors.topMargin: 100
                anchors.leftMargin: 15
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
            anchors.top: project1bar.bottom
            anchors.topMargin: 15
        }
        Text {
            id: done
            text: "Done"
            color: "black"
            font.pointSize: 12

            anchors.top: project1bar.bottom
            anchors.topMargin: 15
            anchors.left: splitBar.right
                anchors.right: project1bar.right
                anchors.horizontalCenter: undefined
                horizontalAlignment: Text.AlignHCenter
        }
    }
}
