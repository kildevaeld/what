import QtQuick 2.2
import What 0.1

Rectangle {
    Text {
        id: text
        anchors {
            top: parent.top
            topMargin: 50
            horizontalCenter: parent.horizontalCenter
        }
        text: qsTr("What?")
        font {
            pixelSize: 26
        }
    }

    TextInput {

        id: input
        anchors {
            top: text.bottom
            topMargin: 15
            horizontalCenter: parent.horizontalCenter
        }

        font {
            pixelSize: 16
        }

        onAccepted: {
            var results = backend.transform(input.text)
        }

        Keys.onReleased: {
            if (event.key == Qt.Key_Backspace) return;

            var suggest = backend.suggest(input.text)
            if (suggest == "") return;
            var len = input.text.length;
            var split = input.text.split(' ');
            split.pop()
            split.push(suggest);
            input.text = split.join(' ')
            input.moveCursorSelection(len)
        }
    }

    Backend {
        id: backend;
    }

    Item {

    }

    Component.onCompleted: {
        backend.transform("1024 bytes in megabytes")
        input.focus = true
    }
}
