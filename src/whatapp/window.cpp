#include "window.hpp"
#include <QIcon>
#include <QMessageBox>
Window::Window(QWidget *parent) : QMainWindow(parent) {
  QIcon icon(":/images/icon.png");
  m_tray = new QSystemTrayIcon(icon, this);
  m_tray->show();

  m_quick = new QQuickWidget(this);
  setCentralWidget(m_quick);

  m_hotkey = new UGlobalHotkeys();
  m_hotkey->registerHotkey("Ctrl+Shift+Q");
  connect(m_hotkey, &UGlobalHotkeys::activated,
          [this](size_t id) { 
              if (!this->isVisible()) {
                this->show();
              }
              this->raise();
              qDebug() << "Activated: " << QString::number(id); });
}


void Window::closeEvent(QCloseEvent *event)
{
#ifdef Q_OS_OSX
    if (!event->spontaneous() || !isVisible()) {
        return;
    }
#endif
    if (m_tray->isVisible()) {
        /*QMessageBox::information(this, tr("Systray"),
                                 tr("The program will keep running in the "
                                    "system tray. To terminate the program, "
                                    "choose <b>Quit</b> in the context menu "
                                    "of the system tray entry."));*/
        hide();
        event->ignore();
    }
}