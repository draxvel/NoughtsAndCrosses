#ifndef TICTACTOE_H
#define TICTACTOE_H

#include <QObject>
#include <QVariant>

class TicTacToe : public QObject
{
    Q_OBJECT
public:
    explicit TicTacToe(QObject *parent = 0);

    QObject* cell;


public slots:

    void SignalClick(QString);

private:
    int array [9] =  {0, 0, 0, 0, 0, 0, 0, 0, 0};

    bool isFirstPlayerMove = true;

    int position;

    int state;
};

#endif // TICTACTOE_H
