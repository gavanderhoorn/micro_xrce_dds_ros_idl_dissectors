-- SPDX-FileCopyrightText: 2022, G.A. vd. Hoorn
-- SPDX-License-Identifier: Apache-2.0


require "dds-xrce-idl"

require "geometry_msgs_msg_TransformStamped"


function tf2_msgs_msg_TFMessage_deserialize(tvb, offset, encoding, tree, label)
    local subtree = tree:add(tvb(offset), label)
    local subtree_begin = offset

    offset = sequence_deserialize(tvb, offset, encoding, subtree, "transforms:", geometry_msgs_msg_TransformStamped_deserialize)

    subtree:set_len(offset - subtree_begin)

    return offset
end
