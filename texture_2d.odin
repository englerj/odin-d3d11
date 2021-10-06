package d3d11

import "../dxgi"

Texture_2D_Desc :: struct {
    width            : u32,
    height           : u32,
    mip_levels       : u32,
    array_size       : u32,
    format           : dxgi.Format,
    sample_desc      : dxgi.Sample_Desc,
    usage            : Usage,
    bind_flags       : Bind_Flags,
    cpu_access_flags : Cpu_Access_Flags,
    misc_flags       : Resource_Misc_Flags,
}

Texture_2D :: struct { 
    vtbl : ^Texture_2D_Vtbl,
}

Texture_2D_Vtbl :: struct {
    query_interface            : rawptr,
    add_ref                    : rawptr,
    release                    : proc "std" (texture_2d: ^Texture_2D) -> u32,
    get_device                 : rawptr,
    get_private_data           : rawptr,
    set_private_data           : rawptr,
    set_private_data_interface : rawptr,
    get_type                   : rawptr,
    set_eviction_priority      : rawptr,
    get_eviction_priority      : rawptr,
    get_desc                   : rawptr,
}

release_texture_2d :: proc(texture_2d: ^Texture_2D) -> u32 {
    return texture_2d.vtbl.release(texture_2d)
}