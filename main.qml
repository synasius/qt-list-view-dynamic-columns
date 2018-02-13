import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3

ApplicationWindow {
    id: root
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    property int columns: 1
    property int columnWidth: Math.max(root.width / root.columns, 200)

    header: ToolBar {
        RowLayout {
            ToolButton {
                text: "Add"
                onClicked: {
                    root.columns += 1;
                }
            }
        }
    }

    ListView {
        anchors.fill: parent
        model: root.columns
        spacing: 5
        orientation: Qt.Horizontal

        delegate: Rectangle {
            height: parent.height;
            width: root.columnWidth
            color: "red"
        }
    }
}
