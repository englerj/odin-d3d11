package d3d11

import "../dxgi"

Render_Target_View_Desc :: struct {
    format         : dxgi.Format,
    view_dimension : RTV_Dimension,
    using _ : struct #raw_union {
        buffer              : Buffer_RTV,
        texture_1d          : Tex_1D_RTV,
        texture_1d_array    : Tex_1D_Array_RTV,
        texture_2d          : Tex_2D_RTV,
        texture_2d_array    : Tex_2D_Array_RTV,
        texture_2d_ms       : Tex_2D_MS_RTV,
        texture_2d_ms_array : Tex_2D_MS_Array_RTV,
        texture_3d          : Tex_3D_RTV,
    },
}

RTV_Dimension :: enum u32 {
    Unknown             = 0,
    Buffer              = 1,
    Texture_1D          = 2,
    Texture_1D_Array    = 3,
    Texture_2D          = 4,
    Texture_2D_Array    = 5,
    Texture_2D_MS       = 6,
    Texture_2D_MS_Array = 7,
    Texture_3D          = 8,
}

Buffer_RTV :: struct {
    using _ : struct #raw_union {
        first_element  : u32,
        element_offset : u32,
    },
    using _ : struct #raw_union {
        num_elements  : u32,
        element_width : u32,
    },
}

Tex_1D_RTV :: struct {
    mip_slice : u32,
}

Tex_1D_Array_RTV :: struct {
    mip_slice         : u32,
    first_array_slice : u32,
    array_size        : u32,
}

Tex_2D_RTV :: struct {
    mip_slice : u32,
}

Tex_2D_Array_RTV :: struct {
    mip_slice         : u32,
    first_array_slice : u32,
    array_size        : u32,
}

Tex_2D_MS_RTV :: struct {
    unused_field: u32,
}

Tex_2D_MS_Array_RTV :: struct {
    first_array_slice : u32,
    array_size        : u32,
}

Tex_3D_RTV :: struct {
    mip_slice     : u32,
    first_w_slice : u32,
    w_size        : u32,
}

Render_Target_View :: struct {
    vtbl : ^Render_Target_View_Vtbl,
}

Render_Target_View_Vtbl :: struct {
    query_interface            : rawptr,
    add_ref                    : rawptr,
    release                    : proc "std" (rtv: ^Render_Target_View) -> u32,
    get_device                 : rawptr,
    get_private_data           : rawptr,
    set_private_data           : rawptr,
    set_private_data_interface : rawptr,
    get_resource               : rawptr,
    get_desc                   : rawptr,
}

release_render_target_view :: proc(rtv: ^Render_Target_View) -> u32 {
    return rtv.vtbl.release(rtv)
}