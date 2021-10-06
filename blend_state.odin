package d3d11

Blend_Desc :: struct {
    alpha_to_coverage_enable : b32,
    independent_blend_enable : b32,
    render_target            : [8]Render_Target_Blend_Desc,
}

Render_Target_Blend_Desc :: struct {
    blend_enable             : b32,
    src_blend                : Blend,
    dest_blend               : Blend,
    blend_op                 : Blend_Op,
    src_blend_alpha          : Blend,
    dest_blend_alpha         : Blend,
    blend_op_alpha           : Blend_Op,
    render_target_write_mask : Color_Write_Enable,
}

Blend :: enum u32 {
    Zero             = 1,
    One              = 2,
    Src_Color        = 3,
    Inv_Src_Color    = 4,
    Src_Alpha        = 5,
    Inv_Src_Alpha    = 6,
    Dst_Alpha        = 7,
    Inv_Dst_Alpha    = 8,
    Dst_Color        = 9,
    Inv_Dst_Color    = 10,
    Src_Alpha_Sat    = 11,
    Blend_Factor     = 14,
    Inv_Blend_Factor = 15,
    Src_1_Color      = 16,
    Inv_Src_1_Color  = 17,
    Src_1_Alpha      = 18,
    Inv_Src_1_Alpha  = 19,
}

Blend_Op :: enum u32 {
    Add          = 1,
    Subtract     = 2,
    Rev_Subtract = 3,
    Min          = 4,
    Max          = 5,
}

Color_Write_Enable :: enum u8 {
    Red   = 1,
    Green = 2,
    Blue  = 4,
    Alpha = 8,
    All   = Red | Green | Blue | Alpha,
}

Blend_State :: struct {
    vtbl : ^Blend_State_Vtbl,
}

Blend_State_Vtbl :: struct {
    query_interface            : rawptr,
    add_ref                    : rawptr,
    release                    : proc "std" (blendState: ^Blend_State) -> u32,
    get_device                 : rawptr,
    get_private_data           : rawptr,
    set_private_data           : rawptr,
    set_private_data_interface : rawptr,
    get_desc                   : rawptr,
}

release_blend_state :: proc(blend_state: ^Blend_State) -> u32 {
    return blend_state.vtbl.release(blend_state)
}