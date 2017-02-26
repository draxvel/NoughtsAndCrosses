import QtQuick 2.7
import QtQuick.Window 2.2




Window {
    id:window
    visible: true
    width: 640
    height: 480
    title: qsTr("Noughts and Crosses")


    signal qmlSignalClick(string msg)


    property bool isFirstPlayerMove: true



        OneCell
        {
            //0
            anchors.centerIn: parent
            anchors.horizontalCenterOffset: -width
            anchors.verticalCenterOffset: -height

            position: 0
        }

        OneCell
        {
            //1
            anchors.centerIn: parent
            anchors.verticalCenterOffset: -height

            position: 1
        }

        OneCell
        {
            //2
            anchors.centerIn: parent
            anchors.horizontalCenterOffset: +width
            anchors.verticalCenterOffset: -height

            position: 2
        }

        OneCell
        {
            //3
            anchors.centerIn: parent
            anchors.horizontalCenterOffset: -width

            position: 3
        }

        OneCell
        {
            //4
            anchors.centerIn: parent

            position: 4
        }

        OneCell
        {
            //5
            anchors.centerIn: parent
            anchors.horizontalCenterOffset: +width

            position: 5
        }

        OneCell
        {
            //6
            anchors.centerIn: parent
            anchors.horizontalCenterOffset: -width
            anchors.verticalCenterOffset: +height

            position: 6
        }

        OneCell
        {
            //7
            anchors.centerIn: parent
            anchors.verticalCenterOffset: +height

            position: 7
        }

        OneCell
        {
            //8
            anchors.centerIn: parent
            anchors.horizontalCenterOffset: +width
            anchors.verticalCenterOffset: +height

            position: 8
        }

}
