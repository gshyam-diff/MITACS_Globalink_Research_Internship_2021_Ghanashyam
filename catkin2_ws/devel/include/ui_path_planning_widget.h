/********************************************************************************
** Form generated from reading UI file 'path_planning_widget.ui'
**
** Created by: Qt User Interface Compiler version 5.12.8
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_PATH_PLANNING_WIDGET_H
#define UI_PATH_PLANNING_WIDGET_H

#include <QtCore/QVariant>
#include <QtWidgets/QApplication>
#include <QtWidgets/QCheckBox>
#include <QtWidgets/QComboBox>
#include <QtWidgets/QFormLayout>
#include <QtWidgets/QGridLayout>
#include <QtWidgets/QGroupBox>
#include <QtWidgets/QHeaderView>
#include <QtWidgets/QLabel>
#include <QtWidgets/QLineEdit>
#include <QtWidgets/QProgressBar>
#include <QtWidgets/QPushButton>
#include <QtWidgets/QSpacerItem>
#include <QtWidgets/QTabWidget>
#include <QtWidgets/QTreeView>
#include <QtWidgets/QVBoxLayout>
#include <QtWidgets/QWidget>

QT_BEGIN_NAMESPACE

class Ui_PathPlanningWidget
{
public:
    QGridLayout *gridLayout;
    QTabWidget *tabWidget;
    QWidget *tab_1;
    QGridLayout *gridLayout_2;
    QPushButton *btn_LoadPath;
    QLabel *label;
    QPushButton *btn_SavePath;
    QPushButton *btn_ClearAllPoints;
    QTreeView *treeView;
    QSpacerItem *horizontalSpacer;
    QGridLayout *gridLayout_3;
    QSpacerItem *verticalSpacer;
    QLineEdit *txtPointName;
    QLabel *label_3;
    QSpacerItem *verticalSpacer_3;
    QSpacerItem *verticalSpacer_2;
    QPushButton *btnRemovePoint;
    QComboBox *combo_planGroup;
    QVBoxLayout *verticalLayout_2;
    QGroupBox *groupBox_3;
    QGroupBox *newPointLayout;
    QFormLayout *FormLayoutObjectPose_2;
    QGroupBox *groupBox;
    QSpacerItem *verticalSpacer_4;
    QLabel *label_2;
    QLabel *xLabel;
    QLineEdit *LineEditX;
    QLabel *yLabel;
    QLineEdit *LineEditY;
    QLabel *zLabel;
    QLineEdit *LineEditZ;
    QLabel *rxLabel;
    QLineEdit *LineEditRx;
    QLabel *ryLabel;
    QLineEdit *LineEditRy;
    QLabel *rzLabel;
    QLineEdit *LineEditRz;
    QPushButton *btnAddPoint;
    QWidget *tab_2;
    QPushButton *targetPoint;
    QLabel *label_4;
    QLineEdit *lnEdit_PlanTime;
    QCheckBox *chk_AllowReplanning;
    QGroupBox *groupBox_2;
    QLabel *label_5;
    QLineEdit *lnEdit_StepSize;
    QLineEdit *lnEdit_JmpThresh;
    QLabel *label_6;
    QCheckBox *chk_AvoidColl;
    QLabel *lbl_cartPathCompleted;
    QPushButton *btn_moveToHome;
    QProgressBar *progressBar;

    void setupUi(QWidget *PathPlanningWidget)
    {
        if (PathPlanningWidget->objectName().isEmpty())
            PathPlanningWidget->setObjectName(QString::fromUtf8("PathPlanningWidget"));
        PathPlanningWidget->resize(503, 644);
        gridLayout = new QGridLayout(PathPlanningWidget);
        gridLayout->setObjectName(QString::fromUtf8("gridLayout"));
        tabWidget = new QTabWidget(PathPlanningWidget);
        tabWidget->setObjectName(QString::fromUtf8("tabWidget"));
        tab_1 = new QWidget();
        tab_1->setObjectName(QString::fromUtf8("tab_1"));
        gridLayout_2 = new QGridLayout(tab_1);
        gridLayout_2->setObjectName(QString::fromUtf8("gridLayout_2"));
        btn_LoadPath = new QPushButton(tab_1);
        btn_LoadPath->setObjectName(QString::fromUtf8("btn_LoadPath"));

        gridLayout_2->addWidget(btn_LoadPath, 9, 0, 1, 1);

        label = new QLabel(tab_1);
        label->setObjectName(QString::fromUtf8("label"));

        gridLayout_2->addWidget(label, 0, 0, 1, 1);

        btn_SavePath = new QPushButton(tab_1);
        btn_SavePath->setObjectName(QString::fromUtf8("btn_SavePath"));

        gridLayout_2->addWidget(btn_SavePath, 9, 1, 1, 1);

        btn_ClearAllPoints = new QPushButton(tab_1);
        btn_ClearAllPoints->setObjectName(QString::fromUtf8("btn_ClearAllPoints"));

        gridLayout_2->addWidget(btn_ClearAllPoints, 9, 3, 1, 1);

        treeView = new QTreeView(tab_1);
        treeView->setObjectName(QString::fromUtf8("treeView"));
        treeView->setRootIsDecorated(true);
        treeView->setUniformRowHeights(true);

        gridLayout_2->addWidget(treeView, 1, 0, 4, 4);

        horizontalSpacer = new QSpacerItem(40, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        gridLayout_2->addItem(horizontalSpacer, 8, 2, 1, 2);

        gridLayout_3 = new QGridLayout();
        gridLayout_3->setObjectName(QString::fromUtf8("gridLayout_3"));
        verticalSpacer = new QSpacerItem(20, 40, QSizePolicy::Minimum, QSizePolicy::Expanding);

        gridLayout_3->addItem(verticalSpacer, 5, 0, 1, 1);

        txtPointName = new QLineEdit(tab_1);
        txtPointName->setObjectName(QString::fromUtf8("txtPointName"));

        gridLayout_3->addWidget(txtPointName, 7, 0, 1, 1);

        label_3 = new QLabel(tab_1);
        label_3->setObjectName(QString::fromUtf8("label_3"));

        gridLayout_3->addWidget(label_3, 6, 0, 1, 1);

        verticalSpacer_3 = new QSpacerItem(20, 40, QSizePolicy::Minimum, QSizePolicy::Expanding);

        gridLayout_3->addItem(verticalSpacer_3, 10, 0, 1, 1);

        verticalSpacer_2 = new QSpacerItem(20, 80, QSizePolicy::Minimum, QSizePolicy::Expanding);

        gridLayout_3->addItem(verticalSpacer_2, 11, 0, 1, 1);

        btnRemovePoint = new QPushButton(tab_1);
        btnRemovePoint->setObjectName(QString::fromUtf8("btnRemovePoint"));

        gridLayout_3->addWidget(btnRemovePoint, 8, 0, 1, 1);

        combo_planGroup = new QComboBox(tab_1);
        combo_planGroup->setObjectName(QString::fromUtf8("combo_planGroup"));

        gridLayout_3->addWidget(combo_planGroup, 4, 0, 1, 1);

        verticalLayout_2 = new QVBoxLayout();
        verticalLayout_2->setObjectName(QString::fromUtf8("verticalLayout_2"));

        gridLayout_3->addLayout(verticalLayout_2, 2, 0, 1, 1);

        groupBox_3 = new QGroupBox(tab_1);
        groupBox_3->setObjectName(QString::fromUtf8("groupBox_3"));
        QFont font;
        font.setPointSize(12);
        font.setBold(true);
        font.setWeight(75);
        groupBox_3->setFont(font);

        gridLayout_3->addWidget(groupBox_3, 3, 0, 1, 1);


        gridLayout_2->addLayout(gridLayout_3, 7, 3, 1, 1);

        newPointLayout = new QGroupBox(tab_1);
        newPointLayout->setObjectName(QString::fromUtf8("newPointLayout"));
        newPointLayout->setAutoFillBackground(false);
        newPointLayout->setStyleSheet(QString::fromUtf8("background-color: rgb(226, 226, 226)"));
        FormLayoutObjectPose_2 = new QFormLayout(newPointLayout);
        FormLayoutObjectPose_2->setObjectName(QString::fromUtf8("FormLayoutObjectPose_2"));
        FormLayoutObjectPose_2->setFieldGrowthPolicy(QFormLayout::AllNonFixedFieldsGrow);
        groupBox = new QGroupBox(newPointLayout);
        groupBox->setObjectName(QString::fromUtf8("groupBox"));
        groupBox->setFont(font);

        FormLayoutObjectPose_2->setWidget(0, QFormLayout::LabelRole, groupBox);

        verticalSpacer_4 = new QSpacerItem(20, 40, QSizePolicy::Minimum, QSizePolicy::Expanding);

        FormLayoutObjectPose_2->setItem(1, QFormLayout::SpanningRole, verticalSpacer_4);

        label_2 = new QLabel(newPointLayout);
        label_2->setObjectName(QString::fromUtf8("label_2"));

        FormLayoutObjectPose_2->setWidget(2, QFormLayout::LabelRole, label_2);

        xLabel = new QLabel(newPointLayout);
        xLabel->setObjectName(QString::fromUtf8("xLabel"));

        FormLayoutObjectPose_2->setWidget(5, QFormLayout::LabelRole, xLabel);

        LineEditX = new QLineEdit(newPointLayout);
        LineEditX->setObjectName(QString::fromUtf8("LineEditX"));
        LineEditX->setStyleSheet(QString::fromUtf8("border-style: outset;\n"
"border-width: 2px;\n"
"border-color :rgb(48, 48, 48)"));

        FormLayoutObjectPose_2->setWidget(5, QFormLayout::FieldRole, LineEditX);

        yLabel = new QLabel(newPointLayout);
        yLabel->setObjectName(QString::fromUtf8("yLabel"));

        FormLayoutObjectPose_2->setWidget(7, QFormLayout::LabelRole, yLabel);

        LineEditY = new QLineEdit(newPointLayout);
        LineEditY->setObjectName(QString::fromUtf8("LineEditY"));
        LineEditY->setStyleSheet(QString::fromUtf8("border-style: outset;\n"
"border-width: 2px;\n"
"border-color :rgb(48, 48, 48)"));

        FormLayoutObjectPose_2->setWidget(7, QFormLayout::FieldRole, LineEditY);

        zLabel = new QLabel(newPointLayout);
        zLabel->setObjectName(QString::fromUtf8("zLabel"));

        FormLayoutObjectPose_2->setWidget(8, QFormLayout::LabelRole, zLabel);

        LineEditZ = new QLineEdit(newPointLayout);
        LineEditZ->setObjectName(QString::fromUtf8("LineEditZ"));
        LineEditZ->setStyleSheet(QString::fromUtf8("border-style: outset;\n"
"border-width: 2px;\n"
"border-color :rgb(48, 48, 48)"));

        FormLayoutObjectPose_2->setWidget(8, QFormLayout::FieldRole, LineEditZ);

        rxLabel = new QLabel(newPointLayout);
        rxLabel->setObjectName(QString::fromUtf8("rxLabel"));

        FormLayoutObjectPose_2->setWidget(9, QFormLayout::LabelRole, rxLabel);

        LineEditRx = new QLineEdit(newPointLayout);
        LineEditRx->setObjectName(QString::fromUtf8("LineEditRx"));
        LineEditRx->setStyleSheet(QString::fromUtf8("border-style: outset;\n"
"border-width: 2px;\n"
"border-color :rgb(48, 48, 48)"));

        FormLayoutObjectPose_2->setWidget(9, QFormLayout::FieldRole, LineEditRx);

        ryLabel = new QLabel(newPointLayout);
        ryLabel->setObjectName(QString::fromUtf8("ryLabel"));

        FormLayoutObjectPose_2->setWidget(10, QFormLayout::LabelRole, ryLabel);

        LineEditRy = new QLineEdit(newPointLayout);
        LineEditRy->setObjectName(QString::fromUtf8("LineEditRy"));
        LineEditRy->setStyleSheet(QString::fromUtf8("border-style: outset;\n"
"border-width: 2px;\n"
"border-color :rgb(48, 48, 48)"));

        FormLayoutObjectPose_2->setWidget(10, QFormLayout::FieldRole, LineEditRy);

        rzLabel = new QLabel(newPointLayout);
        rzLabel->setObjectName(QString::fromUtf8("rzLabel"));

        FormLayoutObjectPose_2->setWidget(12, QFormLayout::LabelRole, rzLabel);

        LineEditRz = new QLineEdit(newPointLayout);
        LineEditRz->setObjectName(QString::fromUtf8("LineEditRz"));
        LineEditRz->setStyleSheet(QString::fromUtf8("border-style: outset;\n"
"border-width: 2px;\n"
"border-color :rgb(48, 48, 48)"));

        FormLayoutObjectPose_2->setWidget(12, QFormLayout::FieldRole, LineEditRz);

        btnAddPoint = new QPushButton(newPointLayout);
        btnAddPoint->setObjectName(QString::fromUtf8("btnAddPoint"));

        FormLayoutObjectPose_2->setWidget(13, QFormLayout::LabelRole, btnAddPoint);


        gridLayout_2->addWidget(newPointLayout, 7, 0, 1, 2);

        tabWidget->addTab(tab_1, QString());
        label->raise();
        treeView->raise();
        btn_LoadPath->raise();
        btn_SavePath->raise();
        newPointLayout->raise();
        btn_ClearAllPoints->raise();
        tab_2 = new QWidget();
        tab_2->setObjectName(QString::fromUtf8("tab_2"));
        targetPoint = new QPushButton(tab_2);
        targetPoint->setObjectName(QString::fromUtf8("targetPoint"));
        targetPoint->setGeometry(QRect(10, 250, 181, 27));
        label_4 = new QLabel(tab_2);
        label_4->setObjectName(QString::fromUtf8("label_4"));
        label_4->setGeometry(QRect(10, 16, 141, 31));
        lnEdit_PlanTime = new QLineEdit(tab_2);
        lnEdit_PlanTime->setObjectName(QString::fromUtf8("lnEdit_PlanTime"));
        lnEdit_PlanTime->setGeometry(QRect(160, 20, 113, 27));
        chk_AllowReplanning = new QCheckBox(tab_2);
        chk_AllowReplanning->setObjectName(QString::fromUtf8("chk_AllowReplanning"));
        chk_AllowReplanning->setGeometry(QRect(160, 60, 151, 22));
        groupBox_2 = new QGroupBox(tab_2);
        groupBox_2->setObjectName(QString::fromUtf8("groupBox_2"));
        groupBox_2->setGeometry(QRect(0, 100, 311, 131));
        QFont font1;
        font1.setPointSize(12);
        font1.setBold(true);
        font1.setItalic(false);
        font1.setWeight(75);
        groupBox_2->setFont(font1);
        groupBox_2->setStyleSheet(QString::fromUtf8("background-color: rgb(226, 226, 226)"));
        label_5 = new QLabel(groupBox_2);
        label_5->setObjectName(QString::fromUtf8("label_5"));
        label_5->setGeometry(QRect(10, 20, 101, 31));
        lnEdit_StepSize = new QLineEdit(groupBox_2);
        lnEdit_StepSize->setObjectName(QString::fromUtf8("lnEdit_StepSize"));
        lnEdit_StepSize->setGeometry(QRect(160, 30, 113, 27));
        lnEdit_StepSize->setStyleSheet(QString::fromUtf8("border-style: outset;\n"
"border-width: 2px;\n"
"border-color :rgb(48, 48, 48)"));
        lnEdit_JmpThresh = new QLineEdit(groupBox_2);
        lnEdit_JmpThresh->setObjectName(QString::fromUtf8("lnEdit_JmpThresh"));
        lnEdit_JmpThresh->setGeometry(QRect(160, 60, 113, 27));
        lnEdit_JmpThresh->setStyleSheet(QString::fromUtf8("border-style: outset;\n"
"border-width: 2px;\n"
"border-color :rgb(48, 48, 48)"));
        label_6 = new QLabel(groupBox_2);
        label_6->setObjectName(QString::fromUtf8("label_6"));
        label_6->setGeometry(QRect(10, 60, 141, 31));
        chk_AvoidColl = new QCheckBox(groupBox_2);
        chk_AvoidColl->setObjectName(QString::fromUtf8("chk_AvoidColl"));
        chk_AvoidColl->setGeometry(QRect(156, 100, 131, 22));
        lbl_cartPathCompleted = new QLabel(tab_2);
        lbl_cartPathCompleted->setObjectName(QString::fromUtf8("lbl_cartPathCompleted"));
        lbl_cartPathCompleted->setGeometry(QRect(10, 290, 461, 41));
        QFont font2;
        font2.setPointSize(12);
        font2.setBold(true);
        font2.setItalic(true);
        font2.setWeight(75);
        lbl_cartPathCompleted->setFont(font2);
        btn_moveToHome = new QPushButton(tab_2);
        btn_moveToHome->setObjectName(QString::fromUtf8("btn_moveToHome"));
        btn_moveToHome->setGeometry(QRect(200, 250, 181, 27));
        tabWidget->addTab(tab_2, QString());

        gridLayout->addWidget(tabWidget, 0, 1, 1, 1);

        progressBar = new QProgressBar(PathPlanningWidget);
        progressBar->setObjectName(QString::fromUtf8("progressBar"));
        progressBar->setValue(24);

        gridLayout->addWidget(progressBar, 1, 1, 1, 1);


        retranslateUi(PathPlanningWidget);

        tabWidget->setCurrentIndex(0);


        QMetaObject::connectSlotsByName(PathPlanningWidget);
    } // setupUi

    void retranslateUi(QWidget *PathPlanningWidget)
    {
        PathPlanningWidget->setWindowTitle(QApplication::translate("PathPlanningWidget", "Form", nullptr));
        btn_LoadPath->setText(QApplication::translate("PathPlanningWidget", "Load Path", nullptr));
        label->setText(QApplication::translate("PathPlanningWidget", "Path Way Points", nullptr));
        btn_SavePath->setText(QApplication::translate("PathPlanningWidget", "Save Path", nullptr));
        btn_ClearAllPoints->setText(QApplication::translate("PathPlanningWidget", "Clear All Points", nullptr));
        label_3->setText(QApplication::translate("PathPlanningWidget", "Point", nullptr));
        btnRemovePoint->setText(QApplication::translate("PathPlanningWidget", "Remove Point", nullptr));
        groupBox_3->setTitle(QApplication::translate("PathPlanningWidget", "Planning Group", nullptr));
        groupBox->setTitle(QApplication::translate("PathPlanningWidget", "Add New Way-Point", nullptr));
        label_2->setText(QApplication::translate("PathPlanningWidget", "Set Position/Orientation", nullptr));
        xLabel->setText(QApplication::translate("PathPlanningWidget", "X (m)", nullptr));
        yLabel->setText(QApplication::translate("PathPlanningWidget", "Y (m)", nullptr));
        zLabel->setText(QApplication::translate("PathPlanningWidget", "Z (m)", nullptr));
        rxLabel->setText(QApplication::translate("PathPlanningWidget", "Rx (deg)", nullptr));
        ryLabel->setText(QApplication::translate("PathPlanningWidget", "Ry (deg)", nullptr));
        rzLabel->setText(QApplication::translate("PathPlanningWidget", "Rz (deg)", nullptr));
        btnAddPoint->setText(QApplication::translate("PathPlanningWidget", "Add Point", nullptr));
        tabWidget->setTabText(tabWidget->indexOf(tab_1), QApplication::translate("PathPlanningWidget", "Make Plan", nullptr));
        targetPoint->setText(QApplication::translate("PathPlanningWidget", "Execute Cartesian Path", nullptr));
        label_4->setText(QApplication::translate("PathPlanningWidget", "Planning Time(sec):", nullptr));
        chk_AllowReplanning->setText(QApplication::translate("PathPlanningWidget", "Allow Replanning", nullptr));
        groupBox_2->setTitle(QApplication::translate("PathPlanningWidget", "Cartesian Path Parameters", nullptr));
        label_5->setText(QApplication::translate("PathPlanningWidget", "Step size (m) :", nullptr));
        lnEdit_JmpThresh->setText(QString());
        label_6->setText(QApplication::translate("PathPlanningWidget", "Jump Threshold (m) :", nullptr));
        chk_AvoidColl->setText(QApplication::translate("PathPlanningWidget", "Avoid Collisions", nullptr));
        lbl_cartPathCompleted->setText(QString());
        btn_moveToHome->setText(QApplication::translate("PathPlanningWidget", "Move to Home", nullptr));
        tabWidget->setTabText(tabWidget->indexOf(tab_2), QApplication::translate("PathPlanningWidget", "Execute Plan", nullptr));
    } // retranslateUi

};

namespace Ui {
    class PathPlanningWidget: public Ui_PathPlanningWidget {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_PATH_PLANNING_WIDGET_H
