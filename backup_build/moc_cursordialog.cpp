/****************************************************************************
** Meta object code from reading C++ file 'cursordialog.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.12.8)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../final_ui_backup/REV1/cursordialog.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'cursordialog.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.12.8. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_CursorDialog_t {
    QByteArrayData data[16];
    char stringdata0[291];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_CursorDialog_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_CursorDialog_t qt_meta_stringdata_CursorDialog = {
    {
QT_MOC_LITERAL(0, 0, 12), // "CursorDialog"
QT_MOC_LITERAL(1, 13, 22), // "cursor1PositionChanged"
QT_MOC_LITERAL(2, 36, 0), // ""
QT_MOC_LITERAL(3, 37, 8), // "position"
QT_MOC_LITERAL(4, 46, 22), // "cursor2PositionChanged"
QT_MOC_LITERAL(5, 69, 21), // "cursor1EnabledChanged"
QT_MOC_LITERAL(6, 91, 7), // "enabled"
QT_MOC_LITERAL(7, 99, 21), // "cursor2EnabledChanged"
QT_MOC_LITERAL(8, 121, 25), // "on_cur1_check_box_toggled"
QT_MOC_LITERAL(9, 147, 7), // "checked"
QT_MOC_LITERAL(10, 155, 25), // "on_cur2_check_box_toggled"
QT_MOC_LITERAL(11, 181, 28), // "on_cur1_radio_button_toggled"
QT_MOC_LITERAL(12, 210, 28), // "on_cur2_radio_button_toggled"
QT_MOC_LITERAL(13, 239, 24), // "on_cur_dial_valueChanged"
QT_MOC_LITERAL(14, 264, 5), // "value"
QT_MOC_LITERAL(15, 270, 20) // "on_ok_button_clicked"

    },
    "CursorDialog\0cursor1PositionChanged\0"
    "\0position\0cursor2PositionChanged\0"
    "cursor1EnabledChanged\0enabled\0"
    "cursor2EnabledChanged\0on_cur1_check_box_toggled\0"
    "checked\0on_cur2_check_box_toggled\0"
    "on_cur1_radio_button_toggled\0"
    "on_cur2_radio_button_toggled\0"
    "on_cur_dial_valueChanged\0value\0"
    "on_ok_button_clicked"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_CursorDialog[] = {

 // content:
       8,       // revision
       0,       // classname
       0,    0, // classinfo
      10,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       4,       // signalCount

 // signals: name, argc, parameters, tag, flags
       1,    1,   64,    2, 0x06 /* Public */,
       4,    1,   67,    2, 0x06 /* Public */,
       5,    1,   70,    2, 0x06 /* Public */,
       7,    1,   73,    2, 0x06 /* Public */,

 // slots: name, argc, parameters, tag, flags
       8,    1,   76,    2, 0x08 /* Private */,
      10,    1,   79,    2, 0x08 /* Private */,
      11,    1,   82,    2, 0x08 /* Private */,
      12,    1,   85,    2, 0x08 /* Private */,
      13,    1,   88,    2, 0x08 /* Private */,
      15,    0,   91,    2, 0x08 /* Private */,

 // signals: parameters
    QMetaType::Void, QMetaType::Float,    3,
    QMetaType::Void, QMetaType::Float,    3,
    QMetaType::Void, QMetaType::Bool,    6,
    QMetaType::Void, QMetaType::Bool,    6,

 // slots: parameters
    QMetaType::Void, QMetaType::Bool,    9,
    QMetaType::Void, QMetaType::Bool,    9,
    QMetaType::Void, QMetaType::Bool,    9,
    QMetaType::Void, QMetaType::Bool,    9,
    QMetaType::Void, QMetaType::Int,   14,
    QMetaType::Void,

       0        // eod
};

void CursorDialog::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        auto *_t = static_cast<CursorDialog *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->cursor1PositionChanged((*reinterpret_cast< float(*)>(_a[1]))); break;
        case 1: _t->cursor2PositionChanged((*reinterpret_cast< float(*)>(_a[1]))); break;
        case 2: _t->cursor1EnabledChanged((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 3: _t->cursor2EnabledChanged((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 4: _t->on_cur1_check_box_toggled((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 5: _t->on_cur2_check_box_toggled((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 6: _t->on_cur1_radio_button_toggled((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 7: _t->on_cur2_radio_button_toggled((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 8: _t->on_cur_dial_valueChanged((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 9: _t->on_ok_button_clicked(); break;
        default: ;
        }
    } else if (_c == QMetaObject::IndexOfMethod) {
        int *result = reinterpret_cast<int *>(_a[0]);
        {
            using _t = void (CursorDialog::*)(float );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&CursorDialog::cursor1PositionChanged)) {
                *result = 0;
                return;
            }
        }
        {
            using _t = void (CursorDialog::*)(float );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&CursorDialog::cursor2PositionChanged)) {
                *result = 1;
                return;
            }
        }
        {
            using _t = void (CursorDialog::*)(bool );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&CursorDialog::cursor1EnabledChanged)) {
                *result = 2;
                return;
            }
        }
        {
            using _t = void (CursorDialog::*)(bool );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&CursorDialog::cursor2EnabledChanged)) {
                *result = 3;
                return;
            }
        }
    }
}

QT_INIT_METAOBJECT const QMetaObject CursorDialog::staticMetaObject = { {
    &QDialog::staticMetaObject,
    qt_meta_stringdata_CursorDialog.data,
    qt_meta_data_CursorDialog,
    qt_static_metacall,
    nullptr,
    nullptr
} };


const QMetaObject *CursorDialog::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *CursorDialog::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_CursorDialog.stringdata0))
        return static_cast<void*>(this);
    return QDialog::qt_metacast(_clname);
}

int CursorDialog::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QDialog::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 10)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 10;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 10)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 10;
    }
    return _id;
}

// SIGNAL 0
void CursorDialog::cursor1PositionChanged(float _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 0, _a);
}

// SIGNAL 1
void CursorDialog::cursor2PositionChanged(float _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 1, _a);
}

// SIGNAL 2
void CursorDialog::cursor1EnabledChanged(bool _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 2, _a);
}

// SIGNAL 3
void CursorDialog::cursor2EnabledChanged(bool _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 3, _a);
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
