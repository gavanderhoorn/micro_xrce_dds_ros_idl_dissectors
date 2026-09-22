-- SPDX-FileCopyrightText: 2026, G.A. vd. Hoorn
-- SPDX-License-Identifier: Apache-2.0


require "dds-xrce-idl"

require "std_msgs_msg_Header"
require "industrial_msgs_msg_RobotMode"
require "industrial_msgs_msg_TriState"


function industrial_msgs_msg_RobotStatus_deserialize(tvb, offset, encoding, tree, label)
    local subtree = tree:add(tvb(offset), label)
    local subtree_begin = offset

    offset = std_msgs_Header_deserialize(tvb, offset, encoding, subtree, "header:")
    offset = industrial_msgs_msg_RobotMode_deserialize(tvb, offset, encoding, subtree, "mode:")
    offset = industrial_msgs_msg_TriState_deserialize(tvb, offset, encoding, subtree, "e_stopped:")
    offset = industrial_msgs_msg_TriState_deserialize(tvb, offset, encoding, subtree, "drives_powered:")
    offset = industrial_msgs_msg_TriState_deserialize(tvb, offset, encoding, subtree, "motion_possible:")
    offset = industrial_msgs_msg_TriState_deserialize(tvb, offset, encoding, subtree, "in_motion:")
    offset = industrial_msgs_msg_TriState_deserialize(tvb, offset, encoding, subtree, "in_error:")
    offset = sequence_deserialize(tvb, offset, encoding, subtree, "error_codes:", long_deserialize)

    subtree:set_len(offset - subtree_begin)

    return offset
end
