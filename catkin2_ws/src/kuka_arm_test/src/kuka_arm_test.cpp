#include <moveit/move_group_interface/move_group_interface.h>
#include <moveit/planning_scene_interface/planning_scene_interface.h>

int main(int argc, char *argv[])
{
    ros::init(argc, argv, "kuka_arm_test");

    ros::AsyncSpinner spinner(1);

    moveit::planning_interface::MoveGroupInterface group("arm");
    group.setRandomTarget();
    group.move();
    ros::waitForShutdown();
    
}
