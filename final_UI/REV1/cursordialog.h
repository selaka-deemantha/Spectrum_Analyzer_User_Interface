#ifndef CURSORDIALOG_H
#define CURSORDIALOG_H

#include <QDialog>

class Ui_CursorDialog;

class CursorDialog : public QDialog
{
    Q_OBJECT

public:
    explicit CursorDialog(QWidget *parent = nullptr);
    ~CursorDialog();

private slots:
    void on_cur1_check_box_toggled(bool checked);
    void on_cur2_check_box_toggled(bool checked);
    void on_cur1_radio_button_toggled(bool checked);
    void on_cur2_radio_button_toggled(bool checked);
    void on_cur_dial_valueChanged(int value);
    void on_ok_button_clicked();

signals:
    void cursor1PositionChanged(float position);
    void cursor2PositionChanged(float position);
    void cursor1EnabledChanged(bool enabled);
    void cursor2EnabledChanged(bool enabled);

private:
    Ui_CursorDialog *ui;
    int selectedCursor = 1; // 1 or 2
};

#endif // CURSORDIALOG_H
