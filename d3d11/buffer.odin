package d3d11

Buffer_Desc :: struct {
    byte_width             : u32,
    usage                  : Usage,
    bind_flags             : Bind_Flags,
    cpu_access_flags       : Cpu_Access_Flags,
    misc_flags             : Resource_Misc_Flags,
    structured_byte_stride : u32,
}

Buffer :: struct {
    vtbl: ^Buffer_Vtbl,
}

Buffer_Vtbl :: struct
{
    query_interface            : rawptr,
    add_ref                    : rawptr,
    release                    : proc "std" (buffer: ^Buffer) -> u32,
    get_device                 : rawptr,
    get_private_data           : rawptr,
    set_private_data           : rawptr,
    set_private_data_interface : rawptr,
    get_type                   : rawptr,
    set_eviction_priority      : rawptr,
    get_eviction_priority      : rawptr,
    get_desc                   : rawptr,
}

ReleaseBuffer :: proc(buffer: ^Buffer) -> u32
{
    return buffer.vtbl.release(buffer)
}