package d3d11

import "../dxgi"

Device_Context :: struct {
    vtbl : ^Device_Context_Vtbl,
}

Device_Context_Vtbl :: struct {
    query_interface                                  : rawptr,
    add_ref                                          : rawptr,
    release                                          : proc "std" (device_context: ^Device_Context) -> u32,
    get_device                                       : rawptr,
    get_private_data                                 : rawptr,
    set_private_data                                 : rawptr,
    set_private_data_interface                       : rawptr,
    vs_set_constant_buffers                          : proc "std" (device_context: ^Device_Context, start_slot: u32, num_buffers: u32, constant_buffers: ^^Buffer),
    ps_set_shader_resources                          : proc "std" (device_context: ^Device_Context, start_slot: u32, num_views: u32, views: ^^Shader_Resource_View),
    ps_set_shader                                    : proc "std" (device_context: ^Device_Context, pixel_shader: ^Pixel_Shader, class_instances: ^Class_Instance, num_class_instances: u32),
    ps_set_samplers                                  : proc "std" (device_context: ^Device_Context, start_slot: u32, samplerCount: u32, samplers: ^^Sampler_State),
    vs_set_shader                                    : proc "std" (device_context: ^Device_Context, vertex_shader: ^Vertex_Shader, class_instances: ^Class_Instance, num_class_instances: u32),
    draw_indexed                                     : proc "std" (device_context: ^Device_Context, index_count: u32, start_index_location: u32, base_vertex_location: u32),
    draw                                             : rawptr,
    map_                                             : proc "std" (device_context: ^Device_Context, resource: rawptr, subresource: u32, map_type: Map_Type, map_flags: Map_Flags, mapped_resource: ^Mapped_Subresource) -> Result,
    unmap                                            : proc "std" (device_context: ^Device_Context, resource: rawptr, subresource: u32),
    ps_set_constant_buffers                          : proc "std" (device_context: ^Device_Context, start_slot: u32, num_buffers: u32, constant_buffers: ^^Buffer),
    ia_set_input_layout                              : proc "std" (device_context: ^Device_Context, input_layout: ^Input_Layout),
    ia_set_vertex_buffers                            : proc "std" (device_context: ^Device_Context, start_slot: u32, num_buffers: u32, vertex_buffers: ^^Buffer, strides: ^u32, offsets: ^u32),
    ia_set_index_buffer                              : proc "std" (device_context: ^Device_Context, index_buffer: ^Buffer, format: dxgi.Format, offset: u32),
    draw_indexed_instanced                           : rawptr,
    draw_instanced                                   : rawptr,
    gs_set_constant_buffers                          : rawptr,
    gs_set_shader                                    : rawptr,
    ia_set_primitive_topology                        : proc "std" (device_context: ^Device_Context, primitive_topology: dxgi.Primitive_Topology),
    vs_set_shader_resources                          : rawptr,
    vs_set_samplers                                  : rawptr,
    begin                                            : rawptr,
    end                                              : rawptr,
    get_data                                         : rawptr,
    set_predication                                  : rawptr,
    gs_set_shader_resources                          : rawptr,
    gs_set_samplers                                  : rawptr,
    om_set_render_targets                            : proc "std" (device_context: ^Device_Context, num_views: u32, render_target_views: ^^Render_Target_View, depth_stencil_view: ^Deptch_Stencil_View),
    om_set_render_targets_and_unordered_access_views : rawptr,
    om_set_blend_state                               : proc "std" (device_context: ^Device_Context, blend_state: ^Blend_State, blend_factor: [4]f32, sample_mask: u32),
    om_set_depth_stencil_state                       : rawptr,
    so_set_targets                                   : rawptr,
    draw_auto                                        : rawptr,
    draw_indexed_instanced_indirect                  : rawptr,
    draw_instanced_indirect                          : rawptr,
    dispatch                                         : rawptr,
    dispatch_indirect                                : rawptr,
    rs_set_state                                     : rawptr,
    rs_set_viewports                                 : proc "std" (device_context: ^Device_Context, num_viewports: u32, viewports: ^Viewport),
    rs_set_scissor_rects                             : rawptr,
    copy_subresource_region                          : rawptr,
    copy_resource                                    : rawptr,
    update_subresource                               : proc "std" (device_context: ^Device_Context, dst_resource: rawptr, dst_subresource: u32, dst_box: ^Box, src_data: rawptr, src_row_pitch: u32, src_depth_pitch: u32),
    copy_structure_count                             : rawptr,
    clear_render_target_view                         : proc "std" (device_context: ^Device_Context, render_target_view: ^Render_Target_View, color_rgba: [4]f32),
    clear_unordered_access_view_uint                 : rawptr,
    clear_unordered_access_view_float                : rawptr,
    clear_depth_stencil_view                         : rawptr,
    generate_mips                                    : rawptr,
    set_resource_min_l_o_d                           : rawptr,
    get_resource_min_l_o_d                           : rawptr,
    resolve_subresource                              : proc "std" (device_context: ^Device_Context, dst_resource: rawptr, dst_subresource: u32, src_resource: rawptr, src_subresource: u32, format: dxgi.Format),
    execute_command_list                             : rawptr,
    hs_set_shader_resources                          : rawptr,
    hs_set_shader                                    : rawptr,
    hs_set_samplers                                  : rawptr,
    hs_set_constant_buffers                          : rawptr,
    ds_set_shader_resources                          : rawptr,
    ds_set_shader                                    : rawptr,
    ds_set_samplers                                  : rawptr,
    ds_set_constant_buffers                          : rawptr,
    cs_set_shader_resources                          : rawptr,
    cs_set_unordered_access_views                    : rawptr,
    cs_set_shader                                    : rawptr,
    cs_set_samplers                                  : rawptr,
    cs_set_constant_buffers                          : rawptr,
    vs_get_constant_buffers                          : rawptr,
    ps_get_shader_resources                          : rawptr,
    ps_get_shader                                    : rawptr,
    ps_get_samplers                                  : rawptr,
    vs_get_shader                                    : rawptr,
    ps_get_constant_buffers                          : rawptr,
    ia_get_input_layout                              : rawptr,
    ia_get_vertex_buffers                            : rawptr,
    ia_get_index_buffer                              : rawptr,
    gs_get_constant_buffers                          : rawptr,
    gs_get_shader                                    : rawptr,
    ia_get_primitive_topology                        : rawptr,
    vs_get_shader_resources                          : rawptr,
    vs_get_samplers                                  : rawptr,
    get_predication                                  : rawptr,
    gs_get_shader_resources                          : rawptr,
    gs_get_samplers                                  : rawptr,
    om_get_render_targets                            : rawptr,
    om_get_render_targets_and_unordered_access_views : rawptr,
    om_get_blend_state                               : rawptr,
    om_get_depth_stencil_state                       : rawptr,
    so_get_targets                                   : rawptr,
    rs_get_state                                     : rawptr,
    rs_get_viewports                                 : rawptr,
    rs_get_scissor_rects                             : rawptr,
    hs_get_shader_resources                          : rawptr,
    hs_get_shader                                    : rawptr,
    hs_get_samplers                                  : rawptr,
    hs_get_constant_buffers                          : rawptr,
    ds_get_shader_resources                          : rawptr,
    ds_get_shader                                    : rawptr,
    ds_get_samplers                                  : rawptr,
    ds_get_constant_buffers                          : rawptr,
    cs_get_shader_resources                          : rawptr,
    cs_get_unordered_access_views                    : rawptr,
    cs_get_shader                                    : rawptr,
    cs_get_samplers                                  : rawptr,
    cs_get_constant_buffers                          : rawptr,
    clear_state                                      : rawptr,
    flush                                            : rawptr,
    get_type                                         : rawptr,
    get_context_flags                                : rawptr,
    finish_command_list                              : rawptr,
}

clear_render_target_view :: proc(device_context: ^Device_Context, render_target_view: ^Render_Target_View, color_rgba: [4]f32) {
    device_context.vtbl.clear_render_target_view(device_context, render_target_view, color_rgba)
}

draw_indexed :: proc(device_context: ^Device_Context, index_count: u32, start_index_location: u32, base_vertex_location: u32) {
    device_context.vtbl.draw_indexed(device_context, index_count, start_index_location, base_vertex_location)
}

ia_set_index_buffer :: proc(device_context: ^Device_Context, index_buffer: ^Buffer, format: dxgi.Format, offset: u32) {
    device_context.vtbl.ia_set_index_buffer(device_context, index_buffer, format, offset)
}

ia_set_input_layout :: proc(device_context: ^Device_Context, input_layout: ^Input_Layout) {
    device_context.vtbl.ia_set_input_layout(device_context, input_layout)
}

ia_set_primitive_topology :: proc(device_context: ^Device_Context, primitive_topology: dxgi.Primitive_Topology) {
    device_context.vtbl.ia_set_primitive_topology(device_context, primitive_topology)
}

ia_set_vertex_buffers :: proc(device_context: ^Device_Context, start_slot: u32, num_buffers: u32, vertex_buffers: ^^Buffer, strides: ^u32, offsets: ^u32) {
    device_context.vtbl.ia_set_vertex_buffers(device_context, start_slot, num_buffers, vertex_buffers, strides, offsets)
}

Map :: proc(device_context: ^Device_Context, resource: rawptr, subresource: u32, map_type: Map_Type, map_flags: Map_Flags, mapped_resource: ^Mapped_Subresource) -> Result {
    return device_context.vtbl.map_(device_context, resource, subresource, map_type, map_flags, mapped_resource)
}

om_set_blend_state :: proc(device_context: ^Device_Context, blend_state: ^Blend_State, blend_factor: [4]f32, sample_mask: u32) {
    device_context.vtbl.om_set_blend_state(device_context, blend_state, blend_factor, sample_mask)
}

om_set_render_targets :: proc(device_context: ^Device_Context, num_views: u32, render_target_views: ^^Render_Target_View, depth_stencil_view: ^Deptch_Stencil_View) {
    device_context.vtbl.om_set_render_targets(device_context, num_views, render_target_views, depth_stencil_view)
}

ps_set_constant_buffers :: proc(device_context: ^Device_Context, start_slot: u32, num_buffers: u32, constant_buffers: ^^Buffer) {
    device_context.vtbl.ps_set_constant_buffers(device_context, start_slot, num_buffers, constant_buffers)
}

ps_set_samplers :: proc(device_context: ^Device_Context, start_slot: u32, samplerCount: u32, samplers: ^^Sampler_State) {
    device_context.vtbl.ps_set_samplers(device_context, start_slot, samplerCount, samplers)
}

ps_set_shader :: proc(device_context: ^Device_Context, pixel_shader: ^Pixel_Shader, class_instances: ^Class_Instance, num_class_instances: u32) {
    device_context.vtbl.ps_set_shader(device_context, pixel_shader, class_instances, num_class_instances)
}

ps_set_shader_resources :: proc(device_context: ^Device_Context, start_slot: u32, num_views: u32, views: ^^Shader_Resource_View) {
    device_context.vtbl.ps_set_shader_resources(device_context, start_slot, num_views, views)
}

release_device_context :: proc(device_context: ^Device_Context) -> u32 {
    return device_context.vtbl.release(device_context)
}

resolve_subresource :: proc(device_context: ^Device_Context, dst_resource: rawptr, dst_subresource: u32, src_resource: rawptr, src_subresource: u32, format: dxgi.Format) {
    device_context.vtbl.resolve_subresource(device_context, dst_resource, dst_subresource, src_resource, src_subresource, format)
}

rs_set_viewports :: proc(device_context: ^Device_Context, num_viewports: u32, viewports: ^Viewport) {
    device_context.vtbl.rs_set_viewports(device_context, num_viewports, viewports)
}

unmap :: proc(device_context: ^Device_Context, resource: rawptr, subresource: u32) {
    device_context.vtbl.unmap(device_context, resource, subresource)
}

update_subresource :: proc(device_context: ^Device_Context, dst_resource: rawptr, dst_subresource: u32, dst_box: ^Box, src_data: rawptr, src_row_pitch: u32, src_depth_pitch: u32) {
    device_context.vtbl.update_subresource(device_context, dst_resource, dst_subresource, dst_box, src_data, src_row_pitch, src_depth_pitch)
}

vs_set_constant_buffers :: proc(device_context: ^Device_Context, start_slot: u32, num_buffers: u32, constant_buffers: ^^Buffer) {
    device_context.vtbl.vs_set_constant_buffers(device_context, start_slot, num_buffers, constant_buffers)
}

vs_set_shader :: proc(device_context: ^Device_Context, vertex_shader: ^Vertex_Shader, class_instances: ^Class_Instance, num_class_instances: u32) {
    device_context.vtbl.vs_set_shader(device_context, vertex_shader, class_instances, num_class_instances)
}