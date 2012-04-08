// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5
import QtQuick 1.1
import Qt 4.7                      //импортируем модуль Qt QML
//import "Button.qml"                //импортируем содержимое папки
Rectangle {
    id: editMenu
    height: 480; width:1000
    color: "powderblue"
    property color buttonBorderColor: "#babebc"
    property color buttonFillColor: "#babebc"
    property string menuName:"Edit"
    gradient: Gradient {
        GradientStop { position: 0.0; color: "#babebc" }
        GradientStop { position: 1.0; color: Qt.darker("#babebc") }
    }

    Rectangle {
        id:actionContainer
         color:"transparent"
        anchors.centerIn: parent
        width: parent.width; height: parent.height / 5
        Row {
            anchors.centerIn: parent
            spacing: parent.width/9
            Button {
                id: redoButton
                width: actionContainer.width/ 1.3
                height:actionContainer.height/ 8

               text: "Redo"

                gradient: Gradient {
                    GradientStop { position: 0.0; color: Qt.lighter(buttonFillColor,1.25) }
                    GradientStop { position: 0.67; color: Qt.darker(buttonFillColor,1.3) }
                }
            }
            Button {
                id: cutButton
               text:  "Cut"

                width: actionContainer.width/ 1.3
                height:actionContainer.height / 8

                gradient: Gradient {
                    GradientStop { position: 0.0; color: Qt.lighter(buttonFillColor,1.25) }
                    GradientStop { position: 0.67; color: Qt.darker(buttonFillColor,1.3) }
                }
            }
            Button {
                id: copyButton
                text:  "Copy"

                width: actionContainer.width/ 1.3
                height:actionContainer.height / 8

                gradient: Gradient {
                    GradientStop { position: 0.0; color: Qt.lighter(buttonFillColor,1.25) }
                    GradientStop { position: 0.67; color: Qt.darker(buttonFillColor,1.3) }
                }
            }
            Button {
                id: pasteButton
                width: actionContainer.width/ 1.3
                height: actionContainer.height/ 8
               text:  "Paste"
               // labelSize: 24
              //  buttonColor: buttonFillColor
               // borderColor: buttonBorderColor
               // onButtonClick: Qt.quit()
                gradient: Gradient {
                    GradientStop { position: 0.0; color: Qt.lighter(buttonFillColor,1.25) }
                    GradientStop { position: 0.67; color: Qt.darker(buttonFillColor,1.3) }
                }
            }
        }
    }
}





