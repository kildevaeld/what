#include <QApplication>
#include "window.hpp"

int main(int argc, char **argv) {

    QApplication app(argc, argv);
    app.setApplicationName("what");
    app.setOrganizationDomain("softshag");
    
    Window win;

    win.show();

    return app.exec();
}