-- SPDX-FileCopyrightText: 2022, G.A. vd. Hoorn
-- SPDX-License-Identifier: Apache-2.0


require "dds-xrce-idl"

require "std_msgs_msg_Header"


function sensor_msgs_msg_JointState_deserialize(tvb, offset, encoding, tree, label)
    local subtree = tree:add(tvb(offset), label)
    local subtree_begin = offset

    offset = std_msgs_Header_deserialize(tvb, offset, encoding, subtree, "header:")
    offset = sequence_deserialize(tvb, offset, encoding, subtree, "name:", string_deserialize)

    offset = sequence_deserialize(tvb, offset, encoding, subtree, "position:", double_deserialize)
    offset = sequence_deserialize(tvb, offset, encoding, subtree, "velocity:", double_deserialize)
    offset = sequence_deserialize(tvb, offset, encoding, subtree, "effort:", double_deserialize)

    subtree:set_len(offset - subtree_begin)

    return offset
end
