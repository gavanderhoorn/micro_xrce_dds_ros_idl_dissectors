-- SPDX-FileCopyrightText: 2022, G.A. vd. Hoorn
-- SPDX-License-Identifier: Apache-2.0


require "dds-xrce-idl"

require "geometry_msgs_msg_Transform"
require "std_msgs_msg_Header"


function geometry_msgs_msg_TransformStamped_deserialize(tvb, offset, encoding, tree, label)
    local subtree = tree:add(tvb(offset), label)
    local subtree_begin = offset

    offset = std_msgs_Header_deserialize(tvb, offset, encoding, subtree, "header:")
    offset = string_deserialize(tvb, offset, encoding, subtree, "child_frame_id:")
    offset = geometry_msgs_msg_Transform_deserialize(tvb, offset, encoding, subtree, "transform:")

    subtree:set_len(offset - subtree_begin)

    return offset
end
