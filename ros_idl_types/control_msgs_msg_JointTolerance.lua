-- SPDX-FileCopyrightText: 2022, G.A. vd. Hoorn
-- SPDX-License-Identifier: Apache-2.0


require "dds-xrce-idl"


function control_msgs_msg_JointTolerance_deserialize(tvb, offset, encoding, tree, label)
    local subtree = tree:add(tvb(offset), label)
    local subtree_begin = offset

    offset = string_deserialize(tvb, offset, encoding, subtree, "name:")
    offset = double_deserialize(tvb, offset, encoding, subtree, "position:")
    offset = double_deserialize(tvb, offset, encoding, subtree, "velocity:")
    offset = double_deserialize(tvb, offset, encoding, subtree, "acceleration:")

    subtree:set_len(offset - subtree_begin)

    return offset
end
