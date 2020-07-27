/*
 * add_two_ints.h
 *
 *  Created on: Jul 23, 2020
 *      Author: hasan
 */

#ifndef SRC_CAR_CONTROLLER_INCLUDE_CAR_CONTROLLER_ADD_TWO_INTS_H_
#define SRC_CAR_CONTROLLER_INCLUDE_CAR_CONTROLLER_ADD_TWO_INTS_H_



#include <std_msgs/Int64.h>

namespace python_bindings_tutorial {

class AddTwoInts
{
  public:
    std_msgs::Int64 add(const std_msgs::Int64& a, const std_msgs::Int64& b);
};

} // namespace python_bindings_tutorial



#endif /* SRC_CAR_CONTROLLER_INCLUDE_CAR_CONTROLLER_ADD_TWO_INTS_H_ */
