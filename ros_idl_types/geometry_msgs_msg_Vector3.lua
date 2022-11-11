-- SPDX-FileCopyrightText: 2022, G.A. vd. Hoorn
-- SPDX-License-Identifier: Apache-2.0


require "dds-xrce-idl"


function geometry_msgs_msg_Vector3_deserialize(tvb, offset, encoding, tree, label)
    local subtree = tree:add(tvb(offset), label)
    local subtree_begin = offset

    offset = double_deserialize(tvb, offset, encoding, subtree, "x:")
    offset = double_deserialize(tvb, offset, encoding, subtree, "y:")
    offset = double_deserialize(tvb, offset, encoding, subtree, "z:")

    subtree:set_len(offset - subtree_begin)

    return offset
end
