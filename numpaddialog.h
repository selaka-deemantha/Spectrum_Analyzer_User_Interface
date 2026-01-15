#ifndef NUMPADDIALOG_H
#define NUMPADDIALOG_H

#include <QDialog>

namespace Ui {
//forward declaration of the class
// this contains the all the components inside the Numpaddialog.
// we use this class as a pointer inside actual NumPadDialog class below
class NumPadDialog;
}

class NumPadDialog : public QDialog
{
    //this is a qt macro that required for any class that uses signals, slots
    Q_OBJECT

public:

    //constructor of the class
    explicit NumPadDialog(QWidget *parent = nullptr);
    ~NumPadDialog();

    // Set window title for context (Span / Center Freq)
    void setTitle(const QString &text);

    // Get the numeric value entered
    double value() const;

private slots:
    // Slot for all button clicks
    void handleButton();

private:
    Ui::NumPadDialog *ui;
    QString input; // store the number input as string
};

#endif // NUMPADDIALOG_H
