// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5
import QtQuick 1.1

Rectangle {
    id:menubutton
    property alias text: textItem.text
    signal clicked

    width: 70; height: 20
    border.width: 1
    radius: 0
    smooth: true

    gradient: Gradient {
                   GradientStop {
                       position: 0
                       color: "#babebc"
                   }

                   GradientStop {
                       position: 0.310
                       color: "#babebc"
                   }

                   GradientStop {
                       position: 1
                       color: "#136f6f6f"
                   }
               }

    Text {
        id: textItem
        anchors.centerIn: parent
        font.pointSize: 10
        color: "black"
    }
    MouseArea {
        id: mouseArea
        anchors.fill: parent
        onClicked: {
//            doOp(operation)
            menubutton.clicked()
    }
    }
}

