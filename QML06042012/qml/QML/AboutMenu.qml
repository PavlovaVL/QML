// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5
import QtQuick 1.1
import Qt 4.7                      //импортируем модуль Qt QML
//import "Button.qml"                //импортируем содержимое папки




Rectangle {
    id: aboutMenu
    height: 480; width:1000
    property color buttonBorderColor: "#babebc"
    property color buttonFillColor: "#babebc"
    property string fileContent:directory.fileContent

    //the menuName is accessible from outside this QML file
    property string menuName: "About"

    //used to divide the screen into parts.
    property real partition: 1/3
 color:"transparent"
        gradient: Gradient {
                        GradientStop { position: 0.0; color: "#babebc" }
                        GradientStop { position: 1.0; color: Qt.darker("#babebc") }
        }

    Rectangle {
        id:actionContainer

        //make this rectangle invisible
        color:"transparent"
        anchors.left: parent.left

        //the height is a good proportion that creates more space at the top of
        //the column of buttons
        width: fileMenu.width * partition; height: fileMenu.height

        Column {
            anchors.centerIn: parent
            spacing: parent.height/32
            Button {
                id: helpButton
                width: actionContainer.width/ 1.3
                height: actionContainer.height/ 8

                text: "Help"

                gradient: Gradient {
                    GradientStop { position: 0.0; color: Qt.lighter(buttonFillColor,1.25) }
                    GradientStop { position: 0.67; color: Qt.darker(buttonFillColor,1.3) }
                }

            }

            Button {
                id: aboutButton
                width: actionContainer.width/ 1.3
                height:actionContainer.height/ 8

               text: "About"
                gradient: Gradient {
                    GradientStop { position: 0.0; color: Qt.lighter(buttonFillColor,1.25) }
                    GradientStop { position: 0.67; color: Qt.darker(buttonFillColor,1.3) }
                }
            }
        }
    }
}
