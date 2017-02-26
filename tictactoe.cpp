#include "tictactoe.h"

#include <QDebug>

TicTacToe::TicTacToe(QObject *parent) : QObject(parent)
{
    cell = this->parent()->findChild<QObject*>("cel");
}

void TicTacToe::SignalClick(QString)
{
    position = this->property("position").toInt();






    qDebug()<<"yo";


    state =(cell->property("st").toInt());

//    isFirstPlayerMove = (cell->property("isFirstPlayerMove").toBool());


    qDebug()<<state;

    //position =(cell->property("position")).toInt();

    if(state == 0)
    {
        if(isFirstPlayerMove)
          {
            state =1 ;
                cell->setProperty("st", state);
                isFirstPlayerMove = !isFirstPlayerMove;
                //cell->setProperty("isFirstPlayerMove", !isFirstPlayerMove);
          }
        else
        {
            state = 2;
                cell->setProperty("st", 2);
                isFirstPlayerMove = !isFirstPlayerMove;
//                cell->setProperty("isFirstPlayerMove", !isFirstPlayerMove);
        }
    }
    else qDebug()<<"state !=0";

    qDebug()<<state;


}
