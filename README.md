# micro_xrce_dds_ros_idl_dissectors

Dissector functions for user-defined-type payload dissection of XRCE-DDS traffic captured by Wireshark and [jseldent/wireshark-dds-xrce](https://github.com/jseldent/wireshark-dds-xrce).


## Installation

Make sure to have [jseldent/wireshark-dds-xrce](https://github.com/jseldent/wireshark-dds-xrce) already installed.

Clone this repository somewhere, and copy (or symlink) the `ros_idl_type_map.lua` file and the `ros_idl_types` directory to the Wireshark plugins directory (`~/.local/lib/wireshark/plugins` on Linux).
