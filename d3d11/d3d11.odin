package d3d11

import "core:sys/win32"
import "../dxgi"

foreign import "system:d3d11.lib"

@(default_calling_convention="std")
foreign d3d11 {
    @(link_name="D3D11CreateDevice")
    create_device :: proc(
        adapter              : ^Adapter,
        driver_type          : dxgi.Driver_Type,
        software             : win32.Hmodule,
        flags                : Device_Flags,
        feature_levels       : ^dxgi.Feature_Level,
        feature_levels_count : u32,
        sdk_version          : u32,
        device               : ^^Device,
        feature_level        : ^dxgi.Feature_Level,
        immediate_context    : ^^Device_Context,
    ) -> Result ---
}