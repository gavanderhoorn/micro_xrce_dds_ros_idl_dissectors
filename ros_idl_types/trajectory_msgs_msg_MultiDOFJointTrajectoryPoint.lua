-- SPDX-FileCopyrightText: 2022, G.A. vd. Hoorn
-- SPDX-License-Identifier: Apache-2.0


require "dds-xrce-idl"

require "builtin_interfaces_msg_Duration"
require "geometry_msgs_msg_Transform"
require "geometry_msgs_msg_Twist"


function trajectory_msgs_msg_MultiDOFJointTrajectoryPoint_deserialize(tvb, offset, encoding, tree, label)
    local subtree = tree:add(tvb(offset), label)
    local subtree_begin = offset

    offset = sequence_deserialize(tvb, offset, encoding, subtree, "transforms:", geometry_msgs_msg_Transform_deserialize)
    offset = sequence_deserialize(tvb, offset, encoding, subtree, "velocities:", geometry_msgs_msg_Twist_deserialize)
    offset = sequence_deserialize(tvb, offset, encoding, subtree, "accelerations:", geometry_msgs_msg_Twist_deserialize)
    offset = builtin_interfaces_msg_Duration_deserialize(tvb, offset, encoding, subtree, "time_from_start:")

    subtree:set_len(offset - subtree_begin)

    return offset
end
