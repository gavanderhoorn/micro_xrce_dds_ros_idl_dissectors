-- SPDX-FileCopyrightText: 2022, G.A. vd. Hoorn
-- SPDX-License-Identifier: Apache-2.0


require "dds-xrce-idl"


require "builtin_interfaces_msg_Duration"
require "control_msgs_msg_JointTolerance"
require "control_msgs_msg_JointComponentTolerance"
require "std_msgs_msg_Header"
require "trajectory_msgs_msg_JointTrajectory"
require "trajectory_msgs_msg_JointTrajectoryPoint"
require "trajectory_msgs_msg_MultiDOFJointTrajectory"
require "trajectory_msgs_msg_MultiDOFJointTrajectoryPoint"


function control_msgs_action_FollowJointTrajectory_Goal_deserialize(tvb, offset, encoding, tree, label)
    local subtree = tree:add(tvb(offset), label)
    local subtree_begin = offset

    -- skip rmw_microxrcedds metadata
    -- TODO: properly deserialise this. It isn't always 40 bytes
    offset = offset + 40

    offset = trajectory_msgs_msg_JointTrajectory_deserialize(tvb, offset, encoding, subtree, "trajectory:")
    offset = trajectory_msgs_msg_MultiDOFJointTrajectory_deserialize(tvb, offset, encoding, subtree, "multi_dof_trajectory:")
    offset = sequence_deserialize(tvb, offset, encoding, subtree, "path_tolerance:", control_msgs_msg_JointTolerance_deserialize)
    offset = sequence_deserialize(tvb, offset, encoding, subtree, "component_path_tolerance:", control_msgs_msg_JointComponentTolerance_deserialize)
    offset = sequence_deserialize(tvb, offset, encoding, subtree, "goal_tolerance:", control_msgs_msg_JointTolerance_deserialize)
    offset = sequence_deserialize(tvb, offset, encoding, subtree, "component_goal_tolerance:", control_msgs_msg_JointComponentTolerance_deserialize)
    offset = builtin_interfaces_msg_Duration_deserialize(tvb, offset, encoding, subtree, "goal_time_tolerance:")

    subtree:set_len(offset - subtree_begin)

    return offset
end


function control_msgs_action_FollowJointTrajectory_Feedback_deserialize(tvb, offset, encoding, tree, label)
    local subtree = tree:add(tvb(offset), label)
    local subtree_begin = offset

    -- skip rmw_microxrcedds metadata
    -- TODO: properly deserialise this. It isn't always 16 bytes
    offset = offset + 16

    offset = std_msgs_Header_deserialize(tvb, offset, encoding, subtree, "header:")
    offset = sequence_deserialize(tvb, offset, encoding, subtree, "joint_names:", string_deserialize)
    offset = trajectory_msgs_msg_JointTrajectoryPoint_deserialize(tvb, offset, encoding, subtree, "desired:")
    offset = trajectory_msgs_msg_JointTrajectoryPoint_deserialize(tvb, offset, encoding, subtree, "actual:")
    offset = trajectory_msgs_msg_JointTrajectoryPoint_deserialize(tvb, offset, encoding, subtree, "error:")

    offset = sequence_deserialize(tvb, offset, encoding, subtree, "multi_dof_joint_names:", string_deserialize)
    offset = trajectory_msgs_msg_MultiDOFJointTrajectoryPoint_deserialize(tvb, offset, encoding, subtree, "multi_dof_desired:")
    offset = trajectory_msgs_msg_MultiDOFJointTrajectoryPoint_deserialize(tvb, offset, encoding, subtree, "multi_dof_actual:")
    offset = trajectory_msgs_msg_MultiDOFJointTrajectoryPoint_deserialize(tvb, offset, encoding, subtree, "multi_dof_error:")

    subtree:set_len(offset - subtree_begin)

    return offset
end


function control_msgs_action_FollowJointTrajectory_Result_deserialize(tvb, offset, encoding, tree, label)
    local subtree = tree:add(tvb(offset), label)
    local subtree_begin = offset

    offset = long_deserialize(tvb, offset, encoding, subtree, "error_code:")
    offset = string_deserialize(tvb, offset, encoding, subtree, "error_string:")

    subtree:set_len(offset - subtree_begin)

    return offset
end
