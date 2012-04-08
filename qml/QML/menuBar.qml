// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5
import QtQuick 1.1
import "Button.qml"

import QtQuick 1.0

Rectangle {
    id: menuBar
    width: 1000; height:300
    color:"transparent"
    property color fileColor: "plum"
    property color editColor: "powderblue"

    property real partition: 1/10

    Column {
        x: 0
        y: 0
        spacing: 0
        anchors.rightMargin: 0
        anchors.bottomMargin: 0
        anchors.leftMargin: 0
        anchors.topMargin: 0
        anchors.fill: parent
        //container for the header and the buttons
        z: 1
        Rectangle {
            id: labelList
            height:menuBar.height*partition
            width: menuBar.width
            color: "beige"
            gradient: Gradient {
                GradientStop { position: 0.0; color: "#8C8F8C" }
                GradientStop { position: 0.17; color: "#6A6D6A" }
                GradientStop { position: 0.98;color: "#3F3F3F" }
                GradientStop { position: 1.0; color: "#0e1B20" }
            }
            Text {
                height: parent.height
                anchors { right: labelRow.left ; verticalCenter: parent.bottom }
                text: "menu:    "
                color: "lightblue"
                font { weight: Font.Light; italic: true }
                smooth: true
            }
            //row displays its children in a vertical row
            Row {
                id: labelRow
                anchors.centerIn: parent
                spacing:40
                Button {
                    id: fileButton
                    height: 20; width: 50
                    text: "File"
                  color : menuListView.currentIndex == 0? fileColor : Qt.darker(fileColor, 1.5)
                    scale: menuListView.currentIndex == 0? 1.25: 1
                    //labelSize: menuListView.currentIndex == 0? 16:12
                    radius: 1
                    smooth:true
                    //on a button click, change the list's currently selected item to FileMenu
                    //onButtonClick: menuListView.currentIndex = 0
                    gradient: Gradient {
                        GradientStop { position: 0.0; color: fileColor }
                        GradientStop { position: 1.0; color: "#136F6F6F" }
                    }
                }
                Button {
                    id: editButton
                    height: 20; width: 50
                    color : menuListView.currentIndex == 1? Qt.darker(editColor, 1.5) : Qt.darker(editColor, 1.9)
                    scale: menuListView.currentIndex == 1? 1.25: 1
                    text: "Edit"
                    radius: 1
                    //labelSize: menuListView.currentIndex == 1? 16:12
                    smooth:true
                    //on a button click, change the list's currently selected item to EditMenu
                    //onButtonClick: menuListView.currentIndex = 1
                    gradient: Gradient {
                        GradientStop { position: 0.0; color: editColor }
                        GradientStop { position: 1.0; color: "#136F6F6F" }
                    }
                }
                Button {
                    id: helpButton
                    height: 20; width: 50
                   color : menuListView.currentIndex == 1? Qt.darker(editColor, 1.5) : Qt.darker(editColor, 1.9)
                    scale: menuListView.currentIndex == 2? 1.25: 1
                   text:  "Help"
                    radius: 1
                    //labelSize: menuListView.currentIndex == 2? 16:12
                    smooth:true
                   // onButtonClick: menuListView.currentIndex = 2
                    gradient: Gradient {
                        GradientStop { position: 0.0; color: editColor }
                        GradientStop { position: 1.0; color: "#136F6F6F" }
                    }
                }
            }
        }

        //list view will display a model according to a delegate
        ListView {
            id: menuListView
            width:menuBar.width; height: 9*menuBar.height*partition

            //the model contains the data
            model: menuListModel

            //control the movement of the menu switching
            snapMode: ListView.SnapOneItem
            orientation: ListView.Horizontal
            boundsBehavior: Flickable.StopAtBounds
            flickDeceleration: 5000
            highlightFollowsCurrentItem: true
            highlightMoveDuration:240
            highlightRangeMode: ListView.StrictlyEnforceRange
        }
    }
    //a list of visual items already have delegates handling their display
    VisualItemModel {
        id: menuListModel
        FileMenu {
            id:fileMenu
            width: menuListView.width; height: menuListView.height
            color: fileColor
        }
        EditMenu {
            color: editColor
            width:  menuListView.width; height: menuListView.height
        }
       AboutMenu {
            color: helpColor
            width:  menuListView.width; height: menuListView.height
        }
    }
}
