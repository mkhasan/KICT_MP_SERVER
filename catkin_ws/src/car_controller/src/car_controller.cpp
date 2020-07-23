/*
 * car_controller.cpp
 *
 *  Created on: Jul 23, 2020
 *      Author: hasan
 */




#include <car_controller/add_two_ints.h>

using namespace python_bindings_tutorial;

std_msgs::Int64 AddTwoInts::add(const std_msgs::Int64& a, const std_msgs::Int64& b)
{
  std_msgs::Int64 sum;
  sum.data = a.data + b.data;
  return sum;
}
