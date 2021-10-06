package d3d11

Vertex_Shader :: struct {
    vtbl: ^Vertex_Shader_Vtbl,
}

Vertex_Shader_Vtbl :: struct {
    query_interface            : rawptr,
    add_ref                    : rawptr,
    release                    : proc "std" (vertex_shader: ^Vertex_Shader) -> u32,
    get_device                 : rawptr,
    get_private_data           : rawptr,
    set_private_data           : rawptr,
    set_private_data_interface : rawptr,
}

release_vertex_shader :: proc(vertex_shader: ^Vertex_Shader) -> u32 {
    return vertex_shader.vtbl.release(vertex_shader)
}