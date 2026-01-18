#ifndef PLOTWIDGET_H
#define PLOTWIDGET_H

#include <QWidget>
#include <QTimer>
#include <QVector>
#include <QPixmap>

class PlotWidget : public QWidget
{
    Q_OBJECT
public:
    explicit PlotWidget(QWidget *parent = nullptr);

protected:
    void paintEvent(QPaintEvent *event) override;
    void resizeEvent(QResizeEvent *event) override;  // regenerate grid when resized

private slots:
    void updateData();

private:
    QVector<int> data;    // stores y-values
    QTimer timer;
    QPixmap background;   // cached grid
    void generateGrid();  // draw grid once
};

#endif // PLOTWIDGET_H
