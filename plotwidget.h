#ifndef PLOTWIDGET_H
#define PLOTWIDGET_H

#include <QWidget>
#include <QVector>
#include <QTimer>
#include <QPixmap>
#include <QString>

class PlotWidget : public QWidget
{
    Q_OBJECT
public:
    explicit PlotWidget(QWidget *parent = nullptr);

    void setSweep(double startFreq, double endFreq, double stepSize);

    // Data source selector
    enum DataSource {
        RandomData,
        FileData
    };

    enum DownSamplingMethod {
        MaxPooling,
        AveragePooling
    };

    void setDataSource(DataSource source);
    void setDownSamplingMethod (DownSamplingMethod source);
    void loadFFTFromFile(const QString &filename);

protected:
    void paintEvent(QPaintEvent *event) override;
    void resizeEvent(QResizeEvent *event) override;

private slots:
    void updateData();

private:
    static const int FFT_POINTS = 512;

    QVector<int>   data;          // Final 512 bins for display
    QVector<float> sweepBuffer;   // Full sweep accumulation

    QTimer   timer;
    QPixmap  background;

    double m_startFreq  = 0;
    double m_endFreq    = 0;
    double m_stepSize   = 0;

    int totalSteps  = 0;
    int currentStep = 0;

    // Data source handling
    DataSource dataSource = RandomData;
    DownSamplingMethod samplingMethod = MaxPooling;
    QVector<float> fileFFTData;
    int fileIndex = 0;

    void generateGrid();
    void generateRandomFFT(QVector<float> &frame);
    void generateFFTFromFile(QVector<float> &frame);
    void downsampleSweep();
};

#endif
