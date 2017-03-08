#include "window.hpp"
#include <QApplication>
#include <QDebug>
#include <QDesktopWidget>
#include <QIcon>
#include <QMenu>
#include <QMessageBox>
#include <QStyle>

#include "backend.hpp"
#include "preferences.hpp"

Window::Window(QWidget *parent) : QMainWindow(parent) {
  QIcon icon(":/images/icon.png");

  m_tray = new QSystemTrayIcon(icon, this);
  m_tray->show();

  m_quick = new QQuickWidget(this);
  m_quick->setResizeMode(QQuickWidget::SizeRootObjectToView);

  qmlRegisterType<Backend>("What", 0, 1, "Backend");

  setCentralWidget(m_quick);
  m_quick->setSource(QUrl("qrc:/qml/main.qml"));

  m_hotkey = new UGlobalHotkeys(this);
  m_hotkey->registerHotkey("Ctrl+Shift+Q");

  connect(m_hotkey, &UGlobalHotkeys::activated, [this](size_t id) {
    if (!this->isVisible()) {
      this->show();
      this->raise();
    } else {
      this->hide();
    }

    // qDebug() << "Activated: " << QString::number(id);
  });

  createMenu();

  setGeometry(0, 0, 550, 300);

  // Center
  setGeometry(QStyle::alignedRect(Qt::LeftToRight, Qt::AlignCenter, size(),
                                  qApp->desktop()->availableGeometry()));
}

void Window::createMenu() {

  QMenu *menu = new QMenu(this);
  menu->addAction("Preferences", this, &Window::onPreferences);
  menu->addSeparator();
  menu->addAction("Quit", this, []() { qApp->exit(); });

  m_tray->setContextMenu(menu);
}

void Window::closeEvent(QCloseEvent *event) {
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
    //event->ignore();
  }
}

void Window::onPreferences() {
  Preferences p(this);

  if (!p.exec()) {
  }
}
