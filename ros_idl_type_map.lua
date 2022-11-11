-- SPDX-FileCopyrightText: 2022, G.A. vd. Hoorn
-- SPDX-License-Identifier: Apache-2.0


package.prepend_path("ros_idl_types")


require "ros_idl_types.builtin_interfaces_msg_Duration"
require "ros_idl_types.builtin_interfaces_msg_Time"
require "ros_idl_types.control_msgs_action_FollowJointTrajectory"
require "ros_idl_types.control_msgs_msg_JointComponentTolerance"
require "ros_idl_types.control_msgs_msg_JointTolerance"
require "ros_idl_types.geometry_msgs_msg_Quaternion"
require "ros_idl_types.geometry_msgs_msg_Transform"
require "ros_idl_types.geometry_msgs_msg_TransformStamped"
require "ros_idl_types.geometry_msgs_msg_Twist"
require "ros_idl_types.geometry_msgs_msg_Vector3"
require "ros_idl_types.sensor_msgs_msg_JointState"
require "ros_idl_types.std_msgs_msg_Header"
require "ros_idl_types.tf2_msgs_msg_TFMessage"
require "ros_idl_types.trajectory_msgs_msg_JointTrajectory"
require "ros_idl_types.trajectory_msgs_msg_JointTrajectoryPoint"
require "ros_idl_types.trajectory_msgs_msg_MultiDOFJointTrajectory"
require "ros_idl_types.trajectory_msgs_msg_MultiDOFJointTrajectoryPoint"


-- map type IDs to deserialisation function

types["builtin_interfaces::msg::dds_::Duration_"] = builtin_interfaces_msg_Duration_deserialize
types["builtin_interfaces::msg::dds_::Time_"] = builtin_interfaces_msg_Time_deserialize

types["control_msgs::action::dds_::FollowJointTrajectory_FeedbackMessage_"] = control_msgs_action_FollowJointTrajectory_Feedback_deserialize
types["control_msgs::action::dds_::FollowJointTrajectory_GoalMessage_"] = control_msgs_action_FollowJointTrajectory_Goal_deserialize
types["control_msgs::action::dds_::FollowJointTrajectory_ResultMessage_"] = control_msgs_action_FollowJointTrajectory_Result_deserialize
types["control_msgs::msg::dds_::JointComponentTolerance_"] = control_msgs_msg_JointComponentTolerance_deserialize
types["control_msgs::msg::dds_::JointTolerance_"] = control_msgs_msg_JointTolerance_deserialize

types["geometry_msgs::msg::dds_::Quaternion_"] = geometry_msgs_msg_Quaternion_deserialize
types["geometry_msgs::msg::dds_::Transform_"] = geometry_msgs_msg_Transform_deserialize
types["geometry_msgs::msg::dds_::TransformStamped_"] = geometry_msgs_msg_TransformStamped_deserialize
types["geometry_msgs::msg::dds_::Twist_"] = geometry_msgs_msg_Twist_deserialize
types["geometry_msgs::msg::dds_::Vector3_"] = geometry_msgs_msg_Vector3_deserialize

types["sensor_msgs::msg::dds_::JointState_"] = sensor_msgs_msg_JointState_deserialize

types["std_msgs::msg::dds_::Header_"] = std_msgs_msg_Header_deserialize

types["tf2_msgs::msg::dds_::TFMessage_"] = tf2_msgs_msg_TFMessage_deserialize

types["trajectory_msgs::msg::dds_::JointTrajectory_"] = trajectory_msgs_msg_JointTrajectory_deserialize
types["trajectory_msgs::msg::dds_::JointTrajectoryPoint_"] = trajectory_msgs_msg_JointTrajectoryPoint_deserialize
types["trajectory_msgs::msg::dds_::MultiDOFJointTrajectory_"] = trajectory_msgs_msg_MultiDOFJointTrajectory_deserialize
types["trajectory_msgs::msg::dds_::MultiDOFJointTrajectoryPoint_"] = trajectory_msgs_msg_MultiDOFJointTrajectoryPoint_deserialize
