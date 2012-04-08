 import QtQuick 1.1
// import "elements"

Rectangle {
    id:mainwindow
    width: 500
    height: 350
    color: "#babebc"
    //    выравнивание в один столбец

    Rectangle {
        id: menuBar
        width: 470; height:40
        color: "#babebc"
        //color:"transparent"
        property color fileColor: "plum"
        property color editColor: "powderblue"

        property real partition: 1/10
        x: 15
        y: 0

        Column {
            x: 0
            y: 0
            width: 995
            height: 26
            spacing: 0
            anchors.rightMargin: 5
            anchors.bottomMargin: 274
            anchors.leftMargin: 0
            anchors.topMargin: 0
            anchors.fill: parent
            //container for the header and the buttons
            z: 1
//            Rectangle {
//                id: labelList
//                height:menuBar.height*partition
//                width: menuBar.width
//                color: "beige"
//                gradient: Gradient {
//                    GradientStop { position: 0.0; color: "#8C8F8C" }
//                    GradientStop { position: 0.17; color: "#6A6D6A" }
//                    GradientStop { position: 0.98;color: "#3F3F3F" }
//                    GradientStop { position: 1.0; color: "#0e1B20" }
//                }
//                Text {
//                    x: -51
//                    y: -6
//                    width: 77
//                    height: parent.height
//                    anchors { right: labelRow.left ; verticalCenter: parent.bottom }
//                    text: "  "
//                    color: "lightblue"
//                    font { weight: Font.Light; italic: true }
//                    smooth: true
//                }
//                //row displays its children in a vertical row
//                Row {
//                    id: labelRow
//                    x: 17
//                    y: -43
//                    width: 966
//                    height: 0
//                    anchors.centerIn: parent
//                    spacing:40
//                }
//            }

            //list view will display a model according to a delegate
            ListView {
                id: menuListView
                width:menuBar.width; height: 9*menuBar.height*partition
                x:0
                y:80

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

        MenuButton {
            id: fileButton
            x: 0
            y: 10
            color: menuListView.currentIndex == 0? fileColor : Qt.darker(fileColor, 1.5)
            text: "File"
//            scale: menuListView.currentIndex == 0? 1.25: 1
            onClicked: {fileMenu.visible = true}
        }

        MenuButton {
            id: editButton
            x: 80
            y: 10

            color: menuListView.currentIndex == 1? Qt.darker(editColor, 1.5) : Qt.darker(editColor, 1.9)

            text: "Edit"
//            scale: menuListView.currentIndex == 1? 1.25: 1
        }

        MenuButton {
            id: helpButton
            x: 160
            y: 10

            color: menuListView.currentIndex == 1? Qt.darker(editColor, 1.5) : Qt.darker(editColor, 1.9)

            text: "Help"

//            scale: menuListView.currentIndex == 2? 1.25: 1
        }

   Row
    {
        x: 15
        y: 46
        width: 470
        height: 39
        anchors.horizontalCenterOffset: 0
        anchors.horizontalCenter: parent.horizontalCenter
        spacing: 10
        Button {
            id: buttonNew
            //text: "New"
            onClicked:  {
            }
            Image {
                anchors.fill: parent
                id: newImage
                source: "./images/mac/filenew.png"
            }
        }
        Button {
            id: buttonOpen
           //text: "Open"
            Image {
                anchors.fill: parent
                id: openImage
                source: "./images/mac/fileopen.png"
            }
            }

        Button {
            id: buttonSave
           // text: "Save"

            Image {
                anchors.fill: parent
                id: saveImage
                source: "./images/mac/filesave.png"
            }
        }
        Button {
            id: buttonPrint
           // text: "Save"

            Image {
                anchors.fill: parent
                id: printImage
                source: "./images/mac/fileprint.png"
            }
        }
        Button {
            id: buttonRedo
           // text: "Redo"
            Image {
                anchors.fill: parent
                id: redoImage
                source: "./images/mac/editredo.png"
            }
        }

        Button {
            id: buttonUndo
            //text: "Undo"
            Image {
                anchors.fill: parent
                id: undoImage
                source: "./images/mac/editundo.png"
            }
        }

        Button {
            id: buttonLeft
            //text: "Left"
            Image {
                anchors.fill: parent
                id: leftImage
                source: "./images/mac/textleft.png"
            }
        }
        Button {
                    id: buttonCenter
                   // text: "Center"
                    Image {
                        anchors.fill: parent
                        id: centerImage
                        source: "./images/mac/textcenter.png"
                    }
                }
        Button {
            id: buttonRigth
            //text: "Rigth"
            Image {
                anchors.fill: parent
                id: rigthImage
                source: "./images/mac/textright.png"
            }
        }
        Button {
            id: buttonBold
            //text: "Rigth"
            Image {
                anchors.fill: parent
                id: boldImage
                source: "./images/mac/textbold.png"
            }
        }
        Button {
            id: buttonItalic
            //text: "Rigth"
            Image {
                anchors.fill: parent
                id: italicImage
                source: "./images/mac/textitalic.png"
            }
        }
        Button {
            id: buttonUnder
            //text: "Rigth"
            Image {
                anchors.fill: parent
                id: underImage
                source: "./images/mac/textunder.png"
            }
        }
    }

    }

    Rectangle {
        id:textArea
         height:244
        property color fontColor: "white"
        property alias textContent: textEdit.text
        x: 0
        y: 99
        width:mainwindow.width
        Flickable {
            id: flickArea
            x: 0
            y: 58
            width: parent.width; height: parent.height
            // anchors.leftMargin: 0
            //anchors.topMargin: 58
            anchors.fill:parent
            boundsBehavior: Flickable.StopAtBounds
            flickableDirection: Flickable.HorizontalFlick
            interactive: true
            TextEdit {
                id: textEdit
                x: 0
                y: 0
                anchors.fill:parent
                width:parent.width; height:parent.height
                color:fontColor
                anchors.leftMargin: 0
                anchors.topMargin: 0
                anchors.rightMargin: 0
                anchors.bottomMargin: 0
                focus: true
                wrapMode: TextEdit.Wrap
                font.pointSize:10
                onCursorRectangleChanged: flickArea.ensureVisible(cursorRectangle)
                selectByMouse: true
            }
        }
    }
}
