-- SPDX-FileCopyrightText: 2022, G.A. vd. Hoorn
-- SPDX-License-Identifier: Apache-2.0


require "dds-xrce-idl"

require "builtin_interfaces_msg_Time"


function std_msgs_Header_deserialize(tvb, offset, encoding, tree, label)
    local subtree = tree:add(tvb(offset), label)
    local subtree_begin = offset

    offset = builtin_interfaces_msg_Time_deserialize(tvb, offset, encoding, subtree, "stamp:")
    offset = string_deserialize(tvb, offset, encoding, subtree, "frame_id:")

    subtree:set_len(offset - subtree_begin)

    return offset
end
