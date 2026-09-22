-- SPDX-FileCopyrightText: 2026, G.A. vd. Hoorn
-- SPDX-License-Identifier: Apache-2.0


require "dds-xrce-idl"


function industrial_msgs_msg_TriState_deserialize(tvb, offset, encoding, tree, label)
    -- TODO: deserialise using enum from TriState
    offset = octet_deserialize(tvb, offset, encoding, tree, label)
    return offset
end
