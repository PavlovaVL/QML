// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5
import QtQuick 1.1
import Qt 4.7                      //импортируем модуль Qt QML
//import "Button.qml"

//импортируем содержимое папки
Rectangle {
    id: fileMenu
    height: 480; width:1000
    property color buttonBorderColor: "#7F8487"
    property color buttonFillColor: "#8FBDCACD"
    property string fileContent:directory.fileContent

    //the menuName is accessible from outside this QML file
    property string menuName: "File"

    //used to divide the screen into parts.
    property real partition: 1/3

    color: "#6C646A"
        gradient: Gradient {
                        GradientStop { position: 0.0; color: "#6C646A" }
                        GradientStop { position: 1.0; color: Qt.darker("#6A6D6A") }
        }
    Rectangle {
        id:actionContainer
        anchors.left: parent.left
        width: fileMenu.width * partition; height: fileMenu.height

        Row {
            anchors.centerIn: parent
            spacing: parent.height/32
            Button {
                id: newButton
                width: actionContainer.width/ 1.3
                height: actionContainer.height/ 8
               // buttonColor: buttonFillColor
               // borderColor: buttonBorderColor
               text: "New"
//                labelSize: 24
//                onButtonClick:{
//                    textArea.textContent = ""
//                    textInput.text = ""
//                }
                gradient: Gradient {
                    GradientStop { position: 0.0; color: Qt.lighter(buttonFillColor,1.25) }
                    GradientStop { position: 0.67; color: Qt.darker(buttonFillColor,1.3) }
                }

            }

            MenuButton {
                id: openButton
                width: actionContainer.width/ 1.3
                height:actionContainer.height/ 8
               text: "Open"
                gradient: Gradient {
                    GradientStop { position: 0.0; color: Qt.lighter(buttonFillColor,1.25) }
                    GradientStop { position: 0.67; color: Qt.darker(buttonFillColor,1.3) }
                }
            }
            Button {
                id: saveButton
               text:  "Save"
                width: actionContainer.width/ 1.3
                height:actionContainer.height / 8
                gradient: Gradient {
                    GradientStop { position: 0.0; color: Qt.lighter(buttonFillColor,1.25) }
                    GradientStop { position: 0.67; color: Qt.darker(buttonFillColor,1.3) }
                }
            }
            Button {
                id: saveasButton
               text:  "Save As"
                width: actionContainer.width/ 1.3
                height:actionContainer.height / 8
                gradient: Gradient {
                    GradientStop { position: 0.0; color: Qt.lighter(buttonFillColor,1.25) }
                    GradientStop { position: 0.67; color: Qt.darker(buttonFillColor,1.3) }
                }
            }

            Rectangle {
                id: space
                width: actionContainer.width/ 1.3
                height: actionContainer.height / 16
                color: "transparent"
            }
            Button {
                id: exitButton
                width: actionContainer.width/ 1.3
                height: actionContainer.height/ 8
               text:  "Exit"
                gradient: Gradient {
                    GradientStop { position: 0.0; color: Qt.lighter(buttonFillColor,1.25) }
                    GradientStop { position: 0.67; color: Qt.darker(buttonFillColor,1.3) }
                }
            }
        }
    }
}
