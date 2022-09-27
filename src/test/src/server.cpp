#include "ros/ros.h"
#include "test/AddInts.h"

bool doReq(test::AddInts::Request& req, test::AddInts::Response& resp)
{
    int num1 = req.num1;
    int num2 = req.num2;
    ROS_INFO("%d, %d", num1, num2);
    if (num1 < 0 || num2 < 0)
    {
        return false;
    }
    resp.sum = num1 + num2;
    return true;
}

int main(int argc, char *argv[])
{
    setlocale(LC_ALL, "");
    ros::init(argc, argv, "AddInts_Server");
    ros::NodeHandle nh;
    ros::ServiceServer server = nh.advertiseService("AddInts", doReq);
    ROS_INFO("~~~~~");
    ros::spin();
    return 0;
}