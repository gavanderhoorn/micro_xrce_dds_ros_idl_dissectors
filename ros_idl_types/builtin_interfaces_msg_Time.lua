-- SPDX-FileCopyrightText: 2022, G.A. vd. Hoorn
-- SPDX-License-Identifier: Apache-2.0


require "dds-xrce-idl"


function builtin_interfaces_msg_Time_deserialize(tvb, offset, encoding, tree, label)
    local subtree = tree:add(tvb(offset), label)
    local subtree_begin = offset

    offset = long_deserialize(tvb, offset, encoding, subtree, "sec:")
    offset = unsigned_long_deserialize(tvb, offset, encoding, subtree, "nanosec:")

    subtree:set_len(offset - subtree_begin)

    return offset
end
