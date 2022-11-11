-- SPDX-FileCopyrightText: 2022, G.A. vd. Hoorn
-- SPDX-License-Identifier: Apache-2.0


require "dds-xrce-idl"

require "std_msgs_msg_Header"
require "trajectory_msgs_msg_MultiDOFJointTrajectoryPoint"


function trajectory_msgs_msg_MultiDOFJointTrajectory_deserialize(tvb, offset, encoding, tree, label)
    local subtree = tree:add(tvb(offset), label)
    local subtree_begin = offset

    offset = std_msgs_Header_deserialize(tvb, offset, encoding, subtree, "header:")
    offset = sequence_deserialize(tvb, offset, encoding, subtree, "joint_names:", string_deserialize)
    offset = sequence_deserialize(tvb, offset, encoding, subtree, "points:", trajectory_msgs_msg_MultiDOFJointTrajectoryPoint_deserialize)

    subtree:set_len(offset - subtree_begin)

    return offset
end
