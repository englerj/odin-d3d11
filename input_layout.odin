package d3d11

import "../dxgi"

Input_Classification :: enum u32 {
    Per_Vertex_Data   = 0,
    Per_Instance_Data = 1,
}

Input_Element_Desc :: struct {
    semantic_name           : cstring,
    semantic_index          : u32,
    format                  : dxgi.Format,
    input_slot              : u32,
    aligned_byte_offset     : u32,
    input_slot_class        : Input_Classification,
    instance_data_step_rate : u32,
}

Input_Layout :: struct {
    vtbl: ^Input_Layout_Vtbl,
}

Input_Layout_Vtbl :: struct {
    query_interface            : rawptr,
    add_ref                    : rawptr,
    release                    : proc "std" (input_layout: ^Input_Layout) -> u32,
    get_device                 : rawptr,
    get_private_data           : rawptr,
    set_private_data           : rawptr,
    set_private_data_interface : rawptr,
}

release_input_layout :: proc(input_layout: ^Input_Layout) -> u32 {
    return input_layout.vtbl.release(input_layout)
}