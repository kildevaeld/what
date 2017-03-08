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
            var r = backend.transform(input.text)
            result.setResult(r);
        
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
        id: result
        
        anchors {
            left: parent.left; right: parent.right; bottom: parent.bottom;
            top: input.bottom;
        }

        ListModel {
            id: model
        }

        Flow {
            anchors.fill: parent
            anchors.margins: 4
            spacing: 10
            Repeater {
                model: model
                Column {
                    Text {
                        text: value
                    }
                    Text {
                        text: key
                    }
                }
            }    
        }



        function setResult(ret) {
            model.clear();
            for(var key in ret) {
                console.log(key + " - " + ret[key])
                model.append({
                    key: key,
                    value: ret[key]
                });
               
            }
             
        }
    }

    Component.onCompleted: {
       
        input.focus = true
    }
}
