-- SPDX-FileCopyrightText: 2022, G.A. vd. Hoorn
-- SPDX-License-Identifier: Apache-2.0


require "dds-xrce-idl"


function control_msgs_msg_JointComponentTolerance_deserialize(tvb, offset, encoding, tree, label)
    local subtree = tree:add(tvb(offset), label)
    local subtree_begin = offset

    offset = string_deserialize(tvb, offset, encoding, subtree, "joint_name:")
    offset = unsigned_short_deserialize(tvb, offset, encoding, subtree, "component:")
    offset = double_deserialize(tvb, offset, encoding, subtree, "position:")
    offset = double_deserialize(tvb, offset, encoding, subtree, "velocity:")
    offset = double_deserialize(tvb, offset, encoding, subtree, "acceleration:")

    subtree:set_len(offset - subtree_begin)

    return offset
end
