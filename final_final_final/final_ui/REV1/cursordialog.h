#ifndef CURSORDIALOG_H
#define CURSORDIALOG_H

#include <QWidget>
#include <QCheckBox>

namespace Ui {
class Form;
}

class CursorDialog : public QWidget
{
    Q_OBJECT

public:
    explicit CursorDialog(QWidget *parent = nullptr);
    ~CursorDialog();
    void setH1Pos(float v);
    void setH2Pos(float v);
    void setV1Pos(float v);
    void setV2Pos(float v);
    void clearLabels();

    void updateH1(float v);
        void updateH2(float v);
        void updateV1(float v);
        void updateV2(float v);

signals:
    void hCursor1Enabled(bool);
    void hCursor2Enabled(bool);
    void vCursor1Enabled(bool);
    void vCursor2Enabled(bool);

    void hCursor1Moved(float);
    void hCursor2Moved(float);
    void vCursor1Moved(float);
    void vCursor2Moved(float);
    void clearCursors();

private:
    Ui::Form *ui;

    enum ActiveCursor {
        None,
        H1,
        H2,
        V1,
        V2
    };

    ActiveCursor activeCursor = None;

    void resetAllExcept(QCheckBox* selected);
};

#endif
