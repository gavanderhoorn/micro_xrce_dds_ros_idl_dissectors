-- SPDX-FileCopyrightText: 2022, G.A. vd. Hoorn
-- SPDX-License-Identifier: Apache-2.0


require "dds-xrce-idl"

require "geometry_msgs_msg_Quaternion"
require "geometry_msgs_msg_Vector3"


function geometry_msgs_msg_Transform_deserialize(tvb, offset, encoding, tree, label)
    local subtree = tree:add(tvb(offset), label)
    local subtree_begin = offset

    offset = geometry_msgs_msg_Vector3_deserialize(tvb, offset, encoding, subtree, "translation:")
    offset = geometry_msgs_msg_Quaternion_deserialize(tvb, offset, encoding, subtree, "rotation:")

    subtree:set_len(offset - subtree_begin)

    return offset
end
