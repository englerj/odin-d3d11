package d3d11

Device :: struct {
    vtbl : ^Device_Vtbl,
}

Device_Vtbl :: struct {
    query_interface                           : rawptr,
    add_ref                                   : rawptr,
    release                                   : proc "std" (device: ^Device) -> u32,
    create_buffer                             : proc "std" (device: ^Device, desc: ^Buffer_Desc, initial_data: ^Subresource_Data, buffer: ^^Buffer) -> Result,
    create_texture_1d                         : rawptr,
    create_texture_2d                         : proc "std" (device: ^Device, desc: ^Texture_2D_Desc, initial_data: ^Subresource_Data, texture_2d: ^^Texture_2D) -> Result,
    create_texture_3d                         : rawptr,
    create_shader_resource_view               : proc "std" (device: ^Device, resource: rawptr, desc: ^Shader_Resource_View_Desc, srv: ^^Shader_Resource_View) -> Result,
    create_unordered_access_view              : rawptr,
    create_render_target_view                 : proc "std" (device: ^Device, resource: rawptr, desc: ^Render_Target_View_Desc, rtv: ^^Render_Target_View) -> Result,
    create_depth_stencil_view                 : rawptr,
    create_input_layout                       : proc "std" (device: ^Device, input_element_descs: ^Input_Element_Desc, num_elements: u32, shader_bytecode_with_input_signature: rawptr, bytecode_length: int, input_layout: ^^Input_Layout) -> Result,
    create_vertex_shader                      : proc "std" (device: ^Device, shader_bytecode: rawptr, bytecode_length: int, class_linkage: ^Class_Linkage, vertex_shader: ^^Vertex_Shader) -> Result,
    create_geometry_shader                    : rawptr,
    create_geometry_shader_with_stream_output : rawptr,
    create_pixel_shader                       : proc "std" (device: ^Device, shader_bytecode: rawptr, bytecode_length: int, class_linkage: ^Class_Linkage, pixel_shader: ^^Pixel_Shader) -> Result,
    create_hull_shader                        : rawptr,
    create_domain_shader                      : rawptr,
    create_compute_shader                     : rawptr,
    create_class_linkage                      : rawptr,
    create_blend_state                        : proc "std" (device: ^Device, desc: ^Blend_Desc, blend_state: ^^Blend_State) -> Result,
    create_depth_stencil_state                : rawptr,
    create_rasterizer_state                   : rawptr,
    create_sampler_state                      : proc "std" (device: ^Device, desc: ^Sampler_Desc, sampler_state: ^^Sampler_State) -> Result,
    create_query                              : rawptr,
    create_predicate                          : rawptr,
    create_counter                            : rawptr,
    create_deferred_context                   : rawptr,
    open_shared_resource                      : rawptr,
    check_format_support                      : rawptr,
    check_multisample_quality_levels          : rawptr,
    check_counter_info                        : rawptr,
    check_counter                             : rawptr,
    check_feature_support                     : rawptr,
    get_private_data                          : rawptr,
    set_private_data                          : rawptr,
    set_private_data_interface                : rawptr,
    get_feature_level                         : rawptr,
    get_creation_flags                        : rawptr,
    get_device_removed_reason                 : rawptr,
    get_immediate_context                     : rawptr,
    set_exception_mode                        : rawptr,
    get_exception_mode                        : rawptr,
}

release_device :: proc(device: ^Device) -> u32 {
    return device.vtbl.release(device)
}

create_blend_state :: proc(device: ^Device, desc: ^Blend_Desc, blend_state: ^^Blend_State) -> Result {
    return device.vtbl.create_blend_state(device, desc, blend_state)
}

create_buffer :: proc(device: ^Device, desc: ^Buffer_Desc, initial_data: ^Subresource_Data, buffer: ^^Buffer) -> Result {
    return device.vtbl.create_buffer(device, desc, initial_data, buffer)
}

create_input_layout :: proc(device: ^Device, input_element_descs: ^Input_Element_Desc, num_elements: u32, shader_bytecode_with_input_signature: rawptr, bytecode_length: int, input_layout: ^^Input_Layout) -> Result {
    return device.vtbl.create_input_layout(device, input_element_descs, num_elements, shader_bytecode_with_input_signature, bytecode_length, input_layout)
}

create_pixel_shader :: proc(device: ^Device, shader_bytecode: rawptr, bytecode_length: int, class_linkage: ^Class_Linkage, pixel_shader: ^^Pixel_Shader) -> Result {
    return device.vtbl.create_pixel_shader(device, shader_bytecode, bytecode_length, class_linkage, pixel_shader)
}

create_render_target_view :: proc(device: ^Device, resource: rawptr, desc: ^Render_Target_View_Desc, rtv: ^^Render_Target_View) -> Result {
    return device.vtbl.create_render_target_view(device, resource, desc, rtv)
}

create_sampler_state :: proc(device: ^Device, desc: ^Sampler_Desc, sampler_state: ^^Sampler_State) -> Result {
    return device.vtbl.create_sampler_state(device, desc, sampler_state)
}

create_shader_resource_view :: proc(device: ^Device, resource: rawptr, desc: ^Shader_Resource_View_Desc, srv: ^^Shader_Resource_View) -> Result {
    return device.vtbl.create_shader_resource_view(device, resource, desc, srv)
}

create_texture_2d :: proc(device: ^Device, desc: ^Texture_2D_Desc, initial_data: ^Subresource_Data, texture_2d: ^^Texture_2D) -> Result {
    return device.vtbl.create_texture_2d(device, desc, initial_data, texture_2d)
}

create_vertex_shader :: proc(device: ^Device, shader_bytecode: rawptr, bytecode_length: int, class_linkage: ^Class_Linkage, vertex_shader: ^^Vertex_Shader) -> Result {
    return device.vtbl.create_vertex_shader(device, shader_bytecode, bytecode_length, class_linkage, vertex_shader)
}