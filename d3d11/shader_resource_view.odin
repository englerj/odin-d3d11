package d3d11

import "../dxgi"

Shader_Resource_View_Desc :: struct {
    format         : dxgi.Format,
    view_dimension : SRV_Dimension,
    using _ : struct #raw_union {
        buffer              : Buffer_SRV,
        texture_1a          : Tex_1D_SRV,
        texture_1d_Array    : Tex_1D_Array_SRV,
        texture_2d          : Tex_2D_SRV,
        texture_2d_array    : Tex_2D_Array_SRV,
        texture_2d_ms       : Tex_2D_MS_SRV,
        texture_2d_ms_array : Tex_2D_MS_Array_SRV,
        texture_3d          : Tex_3D_SRV,
        texture_cube        : Tex_Cube_SRV,
        texture_cube_array  : Tex_Cube_Array_SRV,
        buffer_ex           : Buffer_EX_SRV,
    },
}

SRV_Dimension :: enum u32 {
    Unknown             = 0,
    Buffer              = 1,
    Texture_1D          = 2,
    Texture_1D_Array    = 3,
    Texture_2D          = 4,
    Texture_2D_Array    = 5,
    Texture_2D_MS       = 6,
    Texture_2D_MS_Array = 7,
    Texture_3D          = 8,
    Texture_Cube        = 9,
    Texture_Cube_Array  = 10,
    Buffer_Ex           = 11,
}

Buffer_SRV :: struct {
    using _ : struct #raw_union {
        first_element  : u32,
        element_offset : u32,
    },
    using _ : struct #raw_union {
        num_elements  : u32,
        element_width : u32,
    },
}

Tex_1D_SRV :: struct {
    most_detailed_mip : u32,
    mip_levels        : u32,
}

Tex_1D_Array_SRV :: struct {
    most_detailed_mip : u32,
    mip_levels        : u32,
    first_array_slice : u32,
    array_size        : u32,
}

Tex_2D_SRV :: struct {
    most_detailed_mip : u32,
    mip_levels        : u32,
}

Tex_2D_Array_SRV :: struct {
    most_detailed_mip : u32,
    mip_levels        : u32,
    first_array_slice : u32,
    array_size        : u32,
}

Tex_2D_MS_SRV :: struct {
    unused_field: u32,
}

Tex_2D_MS_Array_SRV :: struct {
    first_array_slice : u32,
    array_size        : u32,
}

Tex_3D_SRV :: struct {
    most_detailed_mip : u32,
    mip_levels        : u32,
}

Tex_Cube_SRV :: struct {
    most_detailed_mip : u32,
    mip_levels        : u32,
}

Tex_Cube_Array_SRV :: struct {
    most_detailed_mip   : u32,
    mip_levels          : u32,
    first_2d_array_face : u32,
    num_cubes           : u32,
}

Buffer_EX_SRV :: struct {
    first_element : u32,
    num_elements  : u32,
    flags         : u32,
}

Shader_Resource_View :: struct {
    vtbl: ^Shader_Resource_View_Vtbl,
}

Shader_Resource_View_Vtbl :: struct {
    query_interface            : rawptr,
    add_ref                    : rawptr,
    release                    : proc "std" (srv: ^Shader_Resource_View) -> u32,
    get_device                 : rawptr,
    get_private_data           : rawptr,
    set_private_data           : rawptr,
    set_private_data_interface : rawptr,
    get_resource               : rawptr,
    get_desc                   : rawptr,
}

release_shader_resource_view :: proc(srv: ^Shader_Resource_View) -> u32 {
    return srv.vtbl.release(srv)
}