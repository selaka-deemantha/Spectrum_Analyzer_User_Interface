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
    QByteArrayData data[11];
    char stringdata0[147];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_CursorDialog_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_CursorDialog_t qt_meta_stringdata_CursorDialog = {
    {
QT_MOC_LITERAL(0, 0, 12), // "CursorDialog"
QT_MOC_LITERAL(1, 13, 15), // "hCursor1Enabled"
QT_MOC_LITERAL(2, 29, 0), // ""
QT_MOC_LITERAL(3, 30, 15), // "hCursor2Enabled"
QT_MOC_LITERAL(4, 46, 15), // "vCursor1Enabled"
QT_MOC_LITERAL(5, 62, 15), // "vCursor2Enabled"
QT_MOC_LITERAL(6, 78, 13), // "hCursor1Moved"
QT_MOC_LITERAL(7, 92, 13), // "hCursor2Moved"
QT_MOC_LITERAL(8, 106, 13), // "vCursor1Moved"
QT_MOC_LITERAL(9, 120, 13), // "vCursor2Moved"
QT_MOC_LITERAL(10, 134, 12) // "clearCursors"

    },
    "CursorDialog\0hCursor1Enabled\0\0"
    "hCursor2Enabled\0vCursor1Enabled\0"
    "vCursor2Enabled\0hCursor1Moved\0"
    "hCursor2Moved\0vCursor1Moved\0vCursor2Moved\0"
    "clearCursors"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_CursorDialog[] = {

 // content:
       8,       // revision
       0,       // classname
       0,    0, // classinfo
       9,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       9,       // signalCount

 // signals: name, argc, parameters, tag, flags
       1,    1,   59,    2, 0x06 /* Public */,
       3,    1,   62,    2, 0x06 /* Public */,
       4,    1,   65,    2, 0x06 /* Public */,
       5,    1,   68,    2, 0x06 /* Public */,
       6,    1,   71,    2, 0x06 /* Public */,
       7,    1,   74,    2, 0x06 /* Public */,
       8,    1,   77,    2, 0x06 /* Public */,
       9,    1,   80,    2, 0x06 /* Public */,
      10,    0,   83,    2, 0x06 /* Public */,

 // signals: parameters
    QMetaType::Void, QMetaType::Bool,    2,
    QMetaType::Void, QMetaType::Bool,    2,
    QMetaType::Void, QMetaType::Bool,    2,
    QMetaType::Void, QMetaType::Bool,    2,
    QMetaType::Void, QMetaType::Float,    2,
    QMetaType::Void, QMetaType::Float,    2,
    QMetaType::Void, QMetaType::Float,    2,
    QMetaType::Void, QMetaType::Float,    2,
    QMetaType::Void,

       0        // eod
};

void CursorDialog::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        auto *_t = static_cast<CursorDialog *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->hCursor1Enabled((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 1: _t->hCursor2Enabled((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 2: _t->vCursor1Enabled((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 3: _t->vCursor2Enabled((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 4: _t->hCursor1Moved((*reinterpret_cast< float(*)>(_a[1]))); break;
        case 5: _t->hCursor2Moved((*reinterpret_cast< float(*)>(_a[1]))); break;
        case 6: _t->vCursor1Moved((*reinterpret_cast< float(*)>(_a[1]))); break;
        case 7: _t->vCursor2Moved((*reinterpret_cast< float(*)>(_a[1]))); break;
        case 8: _t->clearCursors(); break;
        default: ;
        }
    } else if (_c == QMetaObject::IndexOfMethod) {
        int *result = reinterpret_cast<int *>(_a[0]);
        {
            using _t = void (CursorDialog::*)(bool );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&CursorDialog::hCursor1Enabled)) {
                *result = 0;
                return;
            }
        }
        {
            using _t = void (CursorDialog::*)(bool );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&CursorDialog::hCursor2Enabled)) {
                *result = 1;
                return;
            }
        }
        {
            using _t = void (CursorDialog::*)(bool );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&CursorDialog::vCursor1Enabled)) {
                *result = 2;
                return;
            }
        }
        {
            using _t = void (CursorDialog::*)(bool );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&CursorDialog::vCursor2Enabled)) {
                *result = 3;
                return;
            }
        }
        {
            using _t = void (CursorDialog::*)(float );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&CursorDialog::hCursor1Moved)) {
                *result = 4;
                return;
            }
        }
        {
            using _t = void (CursorDialog::*)(float );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&CursorDialog::hCursor2Moved)) {
                *result = 5;
                return;
            }
        }
        {
            using _t = void (CursorDialog::*)(float );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&CursorDialog::vCursor1Moved)) {
                *result = 6;
                return;
            }
        }
        {
            using _t = void (CursorDialog::*)(float );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&CursorDialog::vCursor2Moved)) {
                *result = 7;
                return;
            }
        }
        {
            using _t = void (CursorDialog::*)();
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&CursorDialog::clearCursors)) {
                *result = 8;
                return;
            }
        }
    }
}

QT_INIT_METAOBJECT const QMetaObject CursorDialog::staticMetaObject = { {
    &QWidget::staticMetaObject,
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
    return QWidget::qt_metacast(_clname);
}

int CursorDialog::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QWidget::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 9)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 9;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 9)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 9;
    }
    return _id;
}

// SIGNAL 0
void CursorDialog::hCursor1Enabled(bool _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 0, _a);
}

// SIGNAL 1
void CursorDialog::hCursor2Enabled(bool _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 1, _a);
}

// SIGNAL 2
void CursorDialog::vCursor1Enabled(bool _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 2, _a);
}

// SIGNAL 3
void CursorDialog::vCursor2Enabled(bool _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 3, _a);
}

// SIGNAL 4
void CursorDialog::hCursor1Moved(float _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 4, _a);
}

// SIGNAL 5
void CursorDialog::hCursor2Moved(float _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 5, _a);
}

// SIGNAL 6
void CursorDialog::vCursor1Moved(float _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 6, _a);
}

// SIGNAL 7
void CursorDialog::vCursor2Moved(float _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 7, _a);
}

// SIGNAL 8
void CursorDialog::clearCursors()
{
    QMetaObject::activate(this, &staticMetaObject, 8, nullptr);
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
