/****************************************************************************
** Meta object code from reading C++ file 'path_planning_widget.hpp'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.12.8)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../../src/moveit_cartesian_plan_plugin/include/moveit_cartesian_plan_plugin/widgets/path_planning_widget.hpp"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'path_planning_widget.hpp' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.12.8. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_moveit_cartesian_plan_plugin__widgets__PathPlanningWidget_t {
    QByteArrayData data[54];
    char stringdata0[917];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_moveit_cartesian_plan_plugin__widgets__PathPlanningWidget_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_moveit_cartesian_plan_plugin__widgets__PathPlanningWidget_t qt_meta_stringdata_moveit_cartesian_plan_plugin__widgets__PathPlanningWidget = {
    {
QT_MOC_LITERAL(0, 0, 57), // "moveit_cartesian_plan_plugin:..."
QT_MOC_LITERAL(1, 58, 8), // "addPoint"
QT_MOC_LITERAL(2, 67, 0), // ""
QT_MOC_LITERAL(3, 68, 13), // "tf::Transform"
QT_MOC_LITERAL(4, 82, 9), // "point_pos"
QT_MOC_LITERAL(5, 92, 17), // "pointDelUI_signal"
QT_MOC_LITERAL(6, 110, 11), // "std::string"
QT_MOC_LITERAL(7, 122, 11), // "marker_name"
QT_MOC_LITERAL(8, 134, 22), // "pointPosUpdated_signal"
QT_MOC_LITERAL(9, 157, 8), // "position"
QT_MOC_LITERAL(10, 166, 11), // "const char*"
QT_MOC_LITERAL(11, 178, 23), // "parseWayPointBtn_signal"
QT_MOC_LITERAL(12, 202, 19), // "saveToFileBtn_press"
QT_MOC_LITERAL(13, 222, 21), // "clearAllPoints_signal"
QT_MOC_LITERAL(14, 244, 32), // "cartesianPathParamsFromUI_signal"
QT_MOC_LITERAL(15, 277, 10), // "plan_time_"
QT_MOC_LITERAL(16, 288, 15), // "cart_step_size_"
QT_MOC_LITERAL(17, 304, 17), // "cart_jump_thresh_"
QT_MOC_LITERAL(18, 322, 14), // "moveit_replan_"
QT_MOC_LITERAL(19, 337, 17), // "avoid_collisions_"
QT_MOC_LITERAL(20, 355, 23), // "moveToHomeFromUI_signal"
QT_MOC_LITERAL(21, 379, 25), // "sendSendSelectedPlanGroup"
QT_MOC_LITERAL(22, 405, 5), // "index"
QT_MOC_LITERAL(23, 411, 12), // "initTreeView"
QT_MOC_LITERAL(24, 424, 14), // "pointDeletedUI"
QT_MOC_LITERAL(25, 439, 10), // "pointAddUI"
QT_MOC_LITERAL(26, 450, 9), // "insertRow"
QT_MOC_LITERAL(27, 460, 5), // "count"
QT_MOC_LITERAL(28, 466, 9), // "removeRow"
QT_MOC_LITERAL(29, 476, 9), // "marker_nr"
QT_MOC_LITERAL(30, 486, 20), // "pointPosUpdated_slot"
QT_MOC_LITERAL(31, 507, 13), // "selectedPoint"
QT_MOC_LITERAL(32, 521, 11), // "QModelIndex"
QT_MOC_LITERAL(33, 533, 7), // "current"
QT_MOC_LITERAL(34, 541, 8), // "previous"
QT_MOC_LITERAL(35, 550, 19), // "treeViewDataChanged"
QT_MOC_LITERAL(36, 570, 6), // "index2"
QT_MOC_LITERAL(37, 577, 21), // "parseWayPointBtn_slot"
QT_MOC_LITERAL(38, 599, 16), // "savePointsToFile"
QT_MOC_LITERAL(39, 616, 18), // "loadPointsFromFile"
QT_MOC_LITERAL(40, 635, 19), // "clearAllPoints_slot"
QT_MOC_LITERAL(41, 655, 21), // "setAddPointUIStartPos"
QT_MOC_LITERAL(42, 677, 17), // "robot_model_frame"
QT_MOC_LITERAL(43, 695, 12), // "end_effector"
QT_MOC_LITERAL(44, 708, 27), // "cartesianPathStartedHandler"
QT_MOC_LITERAL(45, 736, 28), // "cartesianPathFinishedHandler"
QT_MOC_LITERAL(46, 765, 30), // "sendCartTrajectoryParamsFromUI"
QT_MOC_LITERAL(47, 796, 22), // "cartPathCompleted_slot"
QT_MOC_LITERAL(48, 819, 8), // "fraction"
QT_MOC_LITERAL(49, 828, 16), // "getCartPlanGroup"
QT_MOC_LITERAL(50, 845, 24), // "std::vector<std::string>"
QT_MOC_LITERAL(51, 870, 11), // "group_names"
QT_MOC_LITERAL(52, 882, 17), // "selectedPlanGroup"
QT_MOC_LITERAL(53, 900, 16) // "moveToHomeFromUI"

    },
    "moveit_cartesian_plan_plugin::widgets::PathPlanningWidget\0"
    "addPoint\0\0tf::Transform\0point_pos\0"
    "pointDelUI_signal\0std::string\0marker_name\0"
    "pointPosUpdated_signal\0position\0"
    "const char*\0parseWayPointBtn_signal\0"
    "saveToFileBtn_press\0clearAllPoints_signal\0"
    "cartesianPathParamsFromUI_signal\0"
    "plan_time_\0cart_step_size_\0cart_jump_thresh_\0"
    "moveit_replan_\0avoid_collisions_\0"
    "moveToHomeFromUI_signal\0"
    "sendSendSelectedPlanGroup\0index\0"
    "initTreeView\0pointDeletedUI\0pointAddUI\0"
    "insertRow\0count\0removeRow\0marker_nr\0"
    "pointPosUpdated_slot\0selectedPoint\0"
    "QModelIndex\0current\0previous\0"
    "treeViewDataChanged\0index2\0"
    "parseWayPointBtn_slot\0savePointsToFile\0"
    "loadPointsFromFile\0clearAllPoints_slot\0"
    "setAddPointUIStartPos\0robot_model_frame\0"
    "end_effector\0cartesianPathStartedHandler\0"
    "cartesianPathFinishedHandler\0"
    "sendCartTrajectoryParamsFromUI\0"
    "cartPathCompleted_slot\0fraction\0"
    "getCartPlanGroup\0std::vector<std::string>\0"
    "group_names\0selectedPlanGroup\0"
    "moveToHomeFromUI"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_moveit_cartesian_plan_plugin__widgets__PathPlanningWidget[] = {

 // content:
       8,       // revision
       0,       // classname
       0,    0, // classinfo
      29,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       9,       // signalCount

 // signals: name, argc, parameters, tag, flags
       1,    1,  159,    2, 0x06 /* Public */,
       5,    1,  162,    2, 0x06 /* Public */,
       8,    2,  165,    2, 0x06 /* Public */,
      11,    0,  170,    2, 0x06 /* Public */,
      12,    0,  171,    2, 0x06 /* Public */,
      13,    0,  172,    2, 0x06 /* Public */,
      14,    5,  173,    2, 0x06 /* Public */,
      20,    0,  184,    2, 0x06 /* Public */,
      21,    1,  185,    2, 0x06 /* Public */,

 // slots: name, argc, parameters, tag, flags
      23,    0,  188,    2, 0x09 /* Protected */,
      24,    0,  189,    2, 0x09 /* Protected */,
      25,    0,  190,    2, 0x09 /* Protected */,
      26,    2,  191,    2, 0x09 /* Protected */,
      28,    1,  196,    2, 0x09 /* Protected */,
      30,    2,  199,    2, 0x09 /* Protected */,
      31,    2,  204,    2, 0x09 /* Protected */,
      35,    2,  209,    2, 0x09 /* Protected */,
      37,    0,  214,    2, 0x09 /* Protected */,
      38,    0,  215,    2, 0x09 /* Protected */,
      39,    0,  216,    2, 0x09 /* Protected */,
      40,    0,  217,    2, 0x09 /* Protected */,
      41,    2,  218,    2, 0x09 /* Protected */,
      44,    0,  223,    2, 0x09 /* Protected */,
      45,    0,  224,    2, 0x09 /* Protected */,
      46,    0,  225,    2, 0x09 /* Protected */,
      47,    1,  226,    2, 0x09 /* Protected */,
      49,    1,  229,    2, 0x09 /* Protected */,
      52,    1,  232,    2, 0x09 /* Protected */,
      53,    0,  235,    2, 0x09 /* Protected */,

 // signals: parameters
    QMetaType::Void, 0x80000000 | 3,    4,
    QMetaType::Void, 0x80000000 | 6,    7,
    QMetaType::Void, 0x80000000 | 3, 0x80000000 | 10,    9,    7,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void, QMetaType::Double, QMetaType::Double, QMetaType::Double, QMetaType::Bool, QMetaType::Bool,   15,   16,   17,   18,   19,
    QMetaType::Void,
    QMetaType::Void, QMetaType::Int,   22,

 // slots: parameters
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void, 0x80000000 | 3, QMetaType::Int,    4,   27,
    QMetaType::Void, QMetaType::Int,   29,
    QMetaType::Void, 0x80000000 | 3, 0x80000000 | 10,    4,    7,
    QMetaType::Void, 0x80000000 | 32, 0x80000000 | 32,   33,   34,
    QMetaType::Void, 0x80000000 | 32, 0x80000000 | 32,   22,   36,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void, 0x80000000 | 6, 0x80000000 | 3,   42,   43,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void, QMetaType::Double,   48,
    QMetaType::Void, 0x80000000 | 50,   51,
    QMetaType::Void, QMetaType::Int,   22,
    QMetaType::Void,

       0        // eod
};

void moveit_cartesian_plan_plugin::widgets::PathPlanningWidget::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        auto *_t = static_cast<PathPlanningWidget *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->addPoint((*reinterpret_cast< const tf::Transform(*)>(_a[1]))); break;
        case 1: _t->pointDelUI_signal((*reinterpret_cast< std::string(*)>(_a[1]))); break;
        case 2: _t->pointPosUpdated_signal((*reinterpret_cast< const tf::Transform(*)>(_a[1])),(*reinterpret_cast< const char*(*)>(_a[2]))); break;
        case 3: _t->parseWayPointBtn_signal(); break;
        case 4: _t->saveToFileBtn_press(); break;
        case 5: _t->clearAllPoints_signal(); break;
        case 6: _t->cartesianPathParamsFromUI_signal((*reinterpret_cast< double(*)>(_a[1])),(*reinterpret_cast< double(*)>(_a[2])),(*reinterpret_cast< double(*)>(_a[3])),(*reinterpret_cast< bool(*)>(_a[4])),(*reinterpret_cast< bool(*)>(_a[5]))); break;
        case 7: _t->moveToHomeFromUI_signal(); break;
        case 8: _t->sendSendSelectedPlanGroup((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 9: _t->initTreeView(); break;
        case 10: _t->pointDeletedUI(); break;
        case 11: _t->pointAddUI(); break;
        case 12: _t->insertRow((*reinterpret_cast< const tf::Transform(*)>(_a[1])),(*reinterpret_cast< const int(*)>(_a[2]))); break;
        case 13: _t->removeRow((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 14: _t->pointPosUpdated_slot((*reinterpret_cast< const tf::Transform(*)>(_a[1])),(*reinterpret_cast< const char*(*)>(_a[2]))); break;
        case 15: _t->selectedPoint((*reinterpret_cast< const QModelIndex(*)>(_a[1])),(*reinterpret_cast< const QModelIndex(*)>(_a[2]))); break;
        case 16: _t->treeViewDataChanged((*reinterpret_cast< const QModelIndex(*)>(_a[1])),(*reinterpret_cast< const QModelIndex(*)>(_a[2]))); break;
        case 17: _t->parseWayPointBtn_slot(); break;
        case 18: _t->savePointsToFile(); break;
        case 19: _t->loadPointsFromFile(); break;
        case 20: _t->clearAllPoints_slot(); break;
        case 21: _t->setAddPointUIStartPos((*reinterpret_cast< const std::string(*)>(_a[1])),(*reinterpret_cast< const tf::Transform(*)>(_a[2]))); break;
        case 22: _t->cartesianPathStartedHandler(); break;
        case 23: _t->cartesianPathFinishedHandler(); break;
        case 24: _t->sendCartTrajectoryParamsFromUI(); break;
        case 25: _t->cartPathCompleted_slot((*reinterpret_cast< double(*)>(_a[1]))); break;
        case 26: _t->getCartPlanGroup((*reinterpret_cast< std::vector<std::string>(*)>(_a[1]))); break;
        case 27: _t->selectedPlanGroup((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 28: _t->moveToHomeFromUI(); break;
        default: ;
        }
    } else if (_c == QMetaObject::IndexOfMethod) {
        int *result = reinterpret_cast<int *>(_a[0]);
        {
            using _t = void (PathPlanningWidget::*)(const tf::Transform );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&PathPlanningWidget::addPoint)) {
                *result = 0;
                return;
            }
        }
        {
            using _t = void (PathPlanningWidget::*)(std::string );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&PathPlanningWidget::pointDelUI_signal)) {
                *result = 1;
                return;
            }
        }
        {
            using _t = void (PathPlanningWidget::*)(const tf::Transform & , const char * );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&PathPlanningWidget::pointPosUpdated_signal)) {
                *result = 2;
                return;
            }
        }
        {
            using _t = void (PathPlanningWidget::*)();
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&PathPlanningWidget::parseWayPointBtn_signal)) {
                *result = 3;
                return;
            }
        }
        {
            using _t = void (PathPlanningWidget::*)();
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&PathPlanningWidget::saveToFileBtn_press)) {
                *result = 4;
                return;
            }
        }
        {
            using _t = void (PathPlanningWidget::*)();
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&PathPlanningWidget::clearAllPoints_signal)) {
                *result = 5;
                return;
            }
        }
        {
            using _t = void (PathPlanningWidget::*)(double , double , double , bool , bool );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&PathPlanningWidget::cartesianPathParamsFromUI_signal)) {
                *result = 6;
                return;
            }
        }
        {
            using _t = void (PathPlanningWidget::*)();
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&PathPlanningWidget::moveToHomeFromUI_signal)) {
                *result = 7;
                return;
            }
        }
        {
            using _t = void (PathPlanningWidget::*)(int );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&PathPlanningWidget::sendSendSelectedPlanGroup)) {
                *result = 8;
                return;
            }
        }
    }
}

QT_INIT_METAOBJECT const QMetaObject moveit_cartesian_plan_plugin::widgets::PathPlanningWidget::staticMetaObject = { {
    &QWidget::staticMetaObject,
    qt_meta_stringdata_moveit_cartesian_plan_plugin__widgets__PathPlanningWidget.data,
    qt_meta_data_moveit_cartesian_plan_plugin__widgets__PathPlanningWidget,
    qt_static_metacall,
    nullptr,
    nullptr
} };


const QMetaObject *moveit_cartesian_plan_plugin::widgets::PathPlanningWidget::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *moveit_cartesian_plan_plugin::widgets::PathPlanningWidget::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_moveit_cartesian_plan_plugin__widgets__PathPlanningWidget.stringdata0))
        return static_cast<void*>(this);
    return QWidget::qt_metacast(_clname);
}

int moveit_cartesian_plan_plugin::widgets::PathPlanningWidget::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QWidget::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 29)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 29;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 29)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 29;
    }
    return _id;
}

// SIGNAL 0
void moveit_cartesian_plan_plugin::widgets::PathPlanningWidget::addPoint(const tf::Transform _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 0, _a);
}

// SIGNAL 1
void moveit_cartesian_plan_plugin::widgets::PathPlanningWidget::pointDelUI_signal(std::string _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 1, _a);
}

// SIGNAL 2
void moveit_cartesian_plan_plugin::widgets::PathPlanningWidget::pointPosUpdated_signal(const tf::Transform & _t1, const char * _t2)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)), const_cast<void*>(reinterpret_cast<const void*>(&_t2)) };
    QMetaObject::activate(this, &staticMetaObject, 2, _a);
}

// SIGNAL 3
void moveit_cartesian_plan_plugin::widgets::PathPlanningWidget::parseWayPointBtn_signal()
{
    QMetaObject::activate(this, &staticMetaObject, 3, nullptr);
}

// SIGNAL 4
void moveit_cartesian_plan_plugin::widgets::PathPlanningWidget::saveToFileBtn_press()
{
    QMetaObject::activate(this, &staticMetaObject, 4, nullptr);
}

// SIGNAL 5
void moveit_cartesian_plan_plugin::widgets::PathPlanningWidget::clearAllPoints_signal()
{
    QMetaObject::activate(this, &staticMetaObject, 5, nullptr);
}

// SIGNAL 6
void moveit_cartesian_plan_plugin::widgets::PathPlanningWidget::cartesianPathParamsFromUI_signal(double _t1, double _t2, double _t3, bool _t4, bool _t5)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)), const_cast<void*>(reinterpret_cast<const void*>(&_t2)), const_cast<void*>(reinterpret_cast<const void*>(&_t3)), const_cast<void*>(reinterpret_cast<const void*>(&_t4)), const_cast<void*>(reinterpret_cast<const void*>(&_t5)) };
    QMetaObject::activate(this, &staticMetaObject, 6, _a);
}

// SIGNAL 7
void moveit_cartesian_plan_plugin::widgets::PathPlanningWidget::moveToHomeFromUI_signal()
{
    QMetaObject::activate(this, &staticMetaObject, 7, nullptr);
}

// SIGNAL 8
void moveit_cartesian_plan_plugin::widgets::PathPlanningWidget::sendSendSelectedPlanGroup(int _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 8, _a);
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
