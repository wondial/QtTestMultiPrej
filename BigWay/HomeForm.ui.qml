import QtQuick 2.14
import QtQuick.Controls 2.14
import QtQuick.Layouts 1.0
import s.b.SmallBoy 1.0 as sb

Page {
    width: 600
    height: 400

    title: qsTr("Home")

    Label {
        text: qsTr("You are on the home page.")
        anchors.centerIn: parent
    }

    RowLayout {
        x: 166
        y: 120

        Label {
            id: label
            text: qsTr("Input")
            transformOrigin: Item.Center
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
        }

        TextEdit {
            id: textEdita
            text: qsTr("Text Edit")
            transformOrigin: Item.Center
            Layout.preferredHeight: 20
            Layout.preferredWidth: 80
            font.pixelSize: 12
        }

        Text {
            id: element
            text: qsTr("+")
            transformOrigin: Item.Center
            font.pixelSize: 12
        }

        TextEdit {
            id: textEditb
            text: qsTr("Text Edit")
            transformOrigin: Item.Center
            Layout.preferredHeight: 20
            Layout.preferredWidth: 80
            font.pixelSize: 12
        }

        Text {
            id: element1
            text: qsTr("=")
            transformOrigin: Item.Center
            font.pixelSize: 12
        }

        Text {
            id: element2
            text: qsTr("Text")
            transformOrigin: Item.Center
            font.pixelSize: 12
        }
    }
}
