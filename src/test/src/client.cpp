#include "ros/ros.h"
#include "test/AddInts.h"

int main(int argc, char * argv[])
{
    setlocale(LC_ALL, "");
    if (argc != 3) {
        return 1;
    }
    ros::init(argc, argv, "AddInts_Client");
    ros::NodeHandle nh;
    ros::ServiceClient client = nh.servereClient<test::AddInts>("AddInts");
    ros::service::waitForService("AddInts");
    test::AddInts ai;
    ai.request.num1 = atoi(argv[1]);
    ai.request.num2 = atoi(argv[2]);
    bool flag = client.call(ai);
    if (flag) {
        ROS_INFO(ai.response.sum);
    } else {
        return 1;
    }
    return 0;
}