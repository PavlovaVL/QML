// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5
import QtQuick 1.1


Rectangle {
    id:textArea
    width :400; height:400
    property color fontColor: "white"
    property alias textContent: textEdit.text
    Flickable {
        id: flickArea
        width: parent.width; height: parent.height
        anchors.fill:parent
        boundsBehavior: Flickable.StopAtBounds
        flickableDirection: Flickable.HorizontalFlick
        interactive: true
        TextEdit {
            id: textEdit
            anchors.fill:parent
            width:parent.width; height:parent.height
            color:fontColor
            focus: true
            wrapMode: TextEdit.Wrap
            font.pointSize:10
            onCursorRectangleChanged: flickArea.ensureVisible(cursorRectangle)
            selectByMouse: true
        }
    }
}
