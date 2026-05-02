/****************************************************************************
** Meta object code from reading C++ file 'plotwidget.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.12.8)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../final_ui_backup/REV1/plotwidget.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#include <QtCore/QList>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'plotwidget.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.12.8. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_PlotWidget_t {
    QByteArrayData data[32];
    char stringdata0[395];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_PlotWidget_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_PlotWidget_t qt_meta_stringdata_PlotWidget = {
    {
QT_MOC_LITERAL(0, 0, 10), // "PlotWidget"
QT_MOC_LITERAL(1, 11, 14), // "frameProcessed"
QT_MOC_LITERAL(2, 26, 0), // ""
QT_MOC_LITERAL(3, 27, 13), // "sweepDelaySet"
QT_MOC_LITERAL(4, 41, 5), // "delay"
QT_MOC_LITERAL(5, 47, 12), // "peaksUpdated"
QT_MOC_LITERAL(6, 60, 12), // "QList<float>"
QT_MOC_LITERAL(7, 73, 10), // "peakValues"
QT_MOC_LITERAL(8, 84, 14), // "peakAmplitudes"
QT_MOC_LITERAL(9, 99, 16), // "fftBoundsChanged"
QT_MOC_LITERAL(10, 116, 5), // "lower"
QT_MOC_LITERAL(11, 122, 5), // "upper"
QT_MOC_LITERAL(12, 128, 22), // "cursorPositionsUpdated"
QT_MOC_LITERAL(13, 151, 12), // "onNewFFTData"
QT_MOC_LITERAL(14, 164, 14), // "noiseSpread_dB"
QT_MOC_LITERAL(15, 179, 14), // "noiseSpread_Li"
QT_MOC_LITERAL(16, 194, 13), // "noiseFloor_dB"
QT_MOC_LITERAL(17, 208, 13), // "noiseFloor_Li"
QT_MOC_LITERAL(18, 222, 8), // "uint32_t"
QT_MOC_LITERAL(19, 231, 5), // "index"
QT_MOC_LITERAL(20, 237, 18), // "std::vector<float>"
QT_MOC_LITERAL(21, 256, 3), // "fft"
QT_MOC_LITERAL(22, 260, 18), // "setHCursor1Enabled"
QT_MOC_LITERAL(23, 279, 2), // "en"
QT_MOC_LITERAL(24, 282, 18), // "setHCursor2Enabled"
QT_MOC_LITERAL(25, 301, 18), // "setVCursor1Enabled"
QT_MOC_LITERAL(26, 320, 18), // "setVCursor2Enabled"
QT_MOC_LITERAL(27, 339, 12), // "moveHCursor1"
QT_MOC_LITERAL(28, 352, 3), // "val"
QT_MOC_LITERAL(29, 356, 12), // "moveHCursor2"
QT_MOC_LITERAL(30, 369, 12), // "moveVCursor1"
QT_MOC_LITERAL(31, 382, 12) // "moveVCursor2"

    },
    "PlotWidget\0frameProcessed\0\0sweepDelaySet\0"
    "delay\0peaksUpdated\0QList<float>\0"
    "peakValues\0peakAmplitudes\0fftBoundsChanged\0"
    "lower\0upper\0cursorPositionsUpdated\0"
    "onNewFFTData\0noiseSpread_dB\0noiseSpread_Li\0"
    "noiseFloor_dB\0noiseFloor_Li\0uint32_t\0"
    "index\0std::vector<float>\0fft\0"
    "setHCursor1Enabled\0en\0setHCursor2Enabled\0"
    "setVCursor1Enabled\0setVCursor2Enabled\0"
    "moveHCursor1\0val\0moveHCursor2\0"
    "moveVCursor1\0moveVCursor2"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_PlotWidget[] = {

 // content:
       8,       // revision
       0,       // classname
       0,    0, // classinfo
      14,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       5,       // signalCount

 // signals: name, argc, parameters, tag, flags
       1,    0,   84,    2, 0x06 /* Public */,
       3,    1,   85,    2, 0x06 /* Public */,
       5,    2,   88,    2, 0x06 /* Public */,
       9,    2,   93,    2, 0x06 /* Public */,
      12,    0,   98,    2, 0x06 /* Public */,

 // slots: name, argc, parameters, tag, flags
      13,    6,   99,    2, 0x0a /* Public */,
      22,    1,  112,    2, 0x0a /* Public */,
      24,    1,  115,    2, 0x0a /* Public */,
      25,    1,  118,    2, 0x0a /* Public */,
      26,    1,  121,    2, 0x0a /* Public */,
      27,    1,  124,    2, 0x0a /* Public */,
      29,    1,  127,    2, 0x0a /* Public */,
      30,    1,  130,    2, 0x0a /* Public */,
      31,    1,  133,    2, 0x0a /* Public */,

 // signals: parameters
    QMetaType::Void,
    QMetaType::Void, QMetaType::Int,    4,
    QMetaType::Void, 0x80000000 | 6, 0x80000000 | 6,    7,    8,
    QMetaType::Void, QMetaType::Int, QMetaType::Int,   10,   11,
    QMetaType::Void,

 // slots: parameters
    QMetaType::Void, QMetaType::Float, QMetaType::Float, QMetaType::Float, QMetaType::Float, 0x80000000 | 18, 0x80000000 | 20,   14,   15,   16,   17,   19,   21,
    QMetaType::Void, QMetaType::Bool,   23,
    QMetaType::Void, QMetaType::Bool,   23,
    QMetaType::Void, QMetaType::Bool,   23,
    QMetaType::Void, QMetaType::Bool,   23,
    QMetaType::Void, QMetaType::Float,   28,
    QMetaType::Void, QMetaType::Float,   28,
    QMetaType::Void, QMetaType::Float,   28,
    QMetaType::Void, QMetaType::Float,   28,

       0        // eod
};

void PlotWidget::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        auto *_t = static_cast<PlotWidget *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->frameProcessed(); break;
        case 1: _t->sweepDelaySet((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 2: _t->peaksUpdated((*reinterpret_cast< const QList<float>(*)>(_a[1])),(*reinterpret_cast< const QList<float>(*)>(_a[2]))); break;
        case 3: _t->fftBoundsChanged((*reinterpret_cast< int(*)>(_a[1])),(*reinterpret_cast< int(*)>(_a[2]))); break;
        case 4: _t->cursorPositionsUpdated(); break;
        case 5: _t->onNewFFTData((*reinterpret_cast< float(*)>(_a[1])),(*reinterpret_cast< float(*)>(_a[2])),(*reinterpret_cast< float(*)>(_a[3])),(*reinterpret_cast< float(*)>(_a[4])),(*reinterpret_cast< uint32_t(*)>(_a[5])),(*reinterpret_cast< const std::vector<float>(*)>(_a[6]))); break;
        case 6: _t->setHCursor1Enabled((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 7: _t->setHCursor2Enabled((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 8: _t->setVCursor1Enabled((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 9: _t->setVCursor2Enabled((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 10: _t->moveHCursor1((*reinterpret_cast< float(*)>(_a[1]))); break;
        case 11: _t->moveHCursor2((*reinterpret_cast< float(*)>(_a[1]))); break;
        case 12: _t->moveVCursor1((*reinterpret_cast< float(*)>(_a[1]))); break;
        case 13: _t->moveVCursor2((*reinterpret_cast< float(*)>(_a[1]))); break;
        default: ;
        }
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        switch (_id) {
        default: *reinterpret_cast<int*>(_a[0]) = -1; break;
        case 2:
            switch (*reinterpret_cast<int*>(_a[1])) {
            default: *reinterpret_cast<int*>(_a[0]) = -1; break;
            case 1:
            case 0:
                *reinterpret_cast<int*>(_a[0]) = qRegisterMetaType< QList<float> >(); break;
            }
            break;
        }
    } else if (_c == QMetaObject::IndexOfMethod) {
        int *result = reinterpret_cast<int *>(_a[0]);
        {
            using _t = void (PlotWidget::*)();
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&PlotWidget::frameProcessed)) {
                *result = 0;
                return;
            }
        }
        {
            using _t = void (PlotWidget::*)(int );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&PlotWidget::sweepDelaySet)) {
                *result = 1;
                return;
            }
        }
        {
            using _t = void (PlotWidget::*)(const QList<float> & , const QList<float> & );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&PlotWidget::peaksUpdated)) {
                *result = 2;
                return;
            }
        }
        {
            using _t = void (PlotWidget::*)(int , int );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&PlotWidget::fftBoundsChanged)) {
                *result = 3;
                return;
            }
        }
        {
            using _t = void (PlotWidget::*)();
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&PlotWidget::cursorPositionsUpdated)) {
                *result = 4;
                return;
            }
        }
    }
}

QT_INIT_METAOBJECT const QMetaObject PlotWidget::staticMetaObject = { {
    &QWidget::staticMetaObject,
    qt_meta_stringdata_PlotWidget.data,
    qt_meta_data_PlotWidget,
    qt_static_metacall,
    nullptr,
    nullptr
} };


const QMetaObject *PlotWidget::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *PlotWidget::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_PlotWidget.stringdata0))
        return static_cast<void*>(this);
    return QWidget::qt_metacast(_clname);
}

int PlotWidget::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QWidget::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 14)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 14;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 14)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 14;
    }
    return _id;
}

// SIGNAL 0
void PlotWidget::frameProcessed()
{
    QMetaObject::activate(this, &staticMetaObject, 0, nullptr);
}

// SIGNAL 1
void PlotWidget::sweepDelaySet(int _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 1, _a);
}

// SIGNAL 2
void PlotWidget::peaksUpdated(const QList<float> & _t1, const QList<float> & _t2)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)), const_cast<void*>(reinterpret_cast<const void*>(&_t2)) };
    QMetaObject::activate(this, &staticMetaObject, 2, _a);
}

// SIGNAL 3
void PlotWidget::fftBoundsChanged(int _t1, int _t2)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)), const_cast<void*>(reinterpret_cast<const void*>(&_t2)) };
    QMetaObject::activate(this, &staticMetaObject, 3, _a);
}

// SIGNAL 4
void PlotWidget::cursorPositionsUpdated()
{
    QMetaObject::activate(this, &staticMetaObject, 4, nullptr);
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
