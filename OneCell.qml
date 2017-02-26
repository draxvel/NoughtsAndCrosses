import QtQuick 2.0


Item {
    id: cel
    objectName: "cel"
    anchors.centerIn: parent
    width: 60
    height: 60



    //state
    //0 - empty cell
    //1 - cross   2 - zero
    property var st: 0

    property var position


    //backgroung
    Rectangle
    {
       anchors.fill: parent
       color: "lightgreen"
       radius: 10
    }


    Image {
        id: croos
        source: "cross.png"
        anchors.fill: parent

        //if (st == 1 (cross)) - opacity=1
        opacity: cel.st == 1 ? 1 : 0
    }

    Image {
        id: zero
        source: "zero.png"
        anchors.fill: parent

        //if (st == 2 (zero)) - opacity=1
        opacity: cel.st == 2 ? 1 : 0
    }

    MouseArea
    {
        anchors.fill: parent

        onClicked:
        {
            if(cel.st == 0)
            {
                if(window.isFirstPlayerMove)
                {
                   cel.st = 1
                    window.isFirstPlayerMove = !window.isFirstPlayerMove
                }

                else
                {
                    cel.st = 2
                    window.isFirstPlayerMove = !window.isFirstPlayerMove
                 }
            }

              //  qmlSignalClick(position);
        }
    }
}
