#pragma once
#include <QMainWindow>
#include <QSystemTrayIcon>
#include <QQuickWidget>
#include <uglobalhotkeys.h>

class Window: public QMainWindow {
    
    Q_OBJECT

public:
    Window(QWidget *parent = 0);
    ~Window() {}

protected:
    virtual void closeEvent(QCloseEvent *event) override;
    
protected slots:
    void onPreferences();

private:
	void createMenu();

    QSystemTrayIcon *m_tray;
    QQuickWidget *m_quick;
    UGlobalHotkeys *m_hotkey;

};