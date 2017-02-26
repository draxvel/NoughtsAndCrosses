#include <QGuiApplication>
#include <QQmlApplicationEngine>

#include <tictactoe.h>

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));



    QObject* root = engine.rootObjects()[0];

    //экземпляр нашего класса
    TicTacToe *TicTacToeRoot = new TicTacToe (root);


    //связываем наш слот из класса и сигнал из qml файла
    QObject::connect(root, SIGNAL(qmlSignalClick(QString)),
                     TicTacToeRoot,SLOT(SignalClick(QString)));

    return app.exec();
}
