package d3d11

Sampler_Desc :: struct {
    filter          : Filter,
    address_u       : Texture_Address_Mode,
    address_v       : Texture_Address_Mode,
    address_w       : Texture_Address_Mode,
    mip_lod_bias    : f32,
    max_anisotropy  : u32,
    comparison_func : Comparison_Func,
    border_color    : [4]f32,
    min_lod         : f32,
    max_lod         : f32,
}

Comparison_Func :: enum u32 {
    Never         = 1,
    Less          = 2,
    Equal         = 3,
    Less_Equal    = 4,
    Greater       = 5,
    Not_Equal     = 6,
    Greater_Equal = 7,
    Always        = 8,
}

Filter :: enum u32 {
    Min_Mag_Mip_Point                          = 0,
    Min_Mag_Point_Mip_Linear                   = 0x1,
    Min_Point_Mag_Linear_Mip_Point             = 0x4,
    Min_Point_Mag_Mip_Linear                   = 0x5,
    Min_Linear_Mag_Mip_Point                   = 0x10,
    Min_Linear_Mag_Point_Mip_Linear            = 0x11,
    Min_Mag_Linear_Mip_Point                   = 0x14,
    Min_Mag_Mip_Linear                         = 0x15,
    Anisotropic                                = 0x55,
    Comparison_Min_Mag_Mip_Point               = 0x80,
    Comparison_Min_Mag_Point_Mip_Linear        = 0x81,
    Comparison_Min_Point_Mag_Linear_Mip_Point  = 0x84,
    Comparison_Min_Point_Mag_Mip_Linear        = 0x85,
    Comparison_Min_Linear_Mag_Mip_Point        = 0x90,
    Comparison_Min_Linear_Mag_Point_Mip_Linear = 0x91,
    Comparison_Min_Mag_Linear_Mip_Point        = 0x94,
    Comparison_Min_Mag_Mip_Linear              = 0x95,
    Comparison_Anisotropic                     = 0xd5,
    Minimum_Min_Mag_Mip_Point                  = 0x100,
    Minimum_Min_Mag_Point_Mip_Linear           = 0x101,
    Minimum_Min_Point_Mag_Linear_Mip_Point     = 0x104,
    Minimum_Min_Point_Mag_Mip_Linear           = 0x105,
    Minimum_Min_Linear_Mag_Mip_Point           = 0x110,
    Minimum_Min_Linear_Mag_Point_Mip_Linear    = 0x111,
    Minimum_Min_Mag_Linear_Mip_Point           = 0x114,
    Minimum_Min_Mag_Mip_Linear                 = 0x115,
    Minimum_Anisotropic                        = 0x155,
    Maximum_Min_Mag_Mip_Point                  = 0x180,
    Maximum_Min_Mag_Point_Mip_Linear           = 0x181,
    Maximum_Min_Point_Mag_Linear_Mip_Point     = 0x184,
    Maximum_Min_Point_Mag_Mip_Linear           = 0x185,
    Maximum_Min_Linear_Mag_Mip_Point           = 0x190,
    Maximum_Min_Linear_Mag_Point_Mip_Linear    = 0x191,
    Maximum_Min_Mag_Linear_Mip_Point           = 0x194,
    Maximum_Min_Mag_Mip_Linear                 = 0x195,
    Maximum_Anisotropic                        = 0x1d5,
}

Texture_Address_Mode :: enum u32 {
    Wrap        = 1,
    Mirror      = 2,
    Clamp       = 3,
    Border      = 4,
    Mirror_Once = 5,
}

Sampler_State :: struct {
    vtbl: ^Sampler_State_Vtbl,
}

Sampler_State_Vtbl :: struct {
    query_interface            : rawptr,
    add_ref                    : rawptr,
    release                    : proc "std" (sampler_state: ^Sampler_State) -> u32,
    get_device                 : rawptr,
    get_private_data           : rawptr,
    set_private_data           : rawptr,
    set_private_data_interface : rawptr,
    get_desc                   : rawptr,
}

release_sampler_state :: proc(sampler_state: ^Sampler_State) -> u32 {
    return sampler_state.vtbl.release(sampler_state)
}