-- SPDX-FileCopyrightText: 2022, G.A. vd. Hoorn
-- SPDX-License-Identifier: Apache-2.0


require "dds-xrce-idl"

require "builtin_interfaces_msg_Duration"


function trajectory_msgs_msg_JointTrajectoryPoint_deserialize(tvb, offset, encoding, tree, label)
    local subtree = tree:add(tvb(offset), label)
    local subtree_begin = offset

    offset = sequence_deserialize(tvb, offset, encoding, subtree, "positions:", double_deserialize)
    offset = sequence_deserialize(tvb, offset, encoding, subtree, "velocities:", double_deserialize)
    offset = sequence_deserialize(tvb, offset, encoding, subtree, "accelerations:", double_deserialize)
    offset = sequence_deserialize(tvb, offset, encoding, subtree, "effort:", double_deserialize)
    offset = builtin_interfaces_msg_Duration_deserialize(tvb, offset, encoding, subtree, "time_from_start:")

    subtree:set_len(offset - subtree_begin)

    return offset
end
