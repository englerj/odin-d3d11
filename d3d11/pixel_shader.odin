package d3d11

Pixel_Shader :: struct {
    vtbl: ^Pixel_Shader_Vtbl,
}

Pixel_Shader_Vtbl :: struct {
    query_interface            : rawptr,
    add_ref                    : rawptr,
    release                    : proc "std" (pixel_shader: ^Pixel_Shader) -> u32,
    get_device                 : rawptr,
    get_private_data           : rawptr,
    set_private_data           : rawptr,
    set_private_data_interface : rawptr,
}

release_pixel_shader :: proc(pixel_shader: ^Pixel_Shader) -> u32 {
    return pixel_shader.vtbl.release(pixel_shader)
}