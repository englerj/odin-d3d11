package d3d11

import "core:sys/win32"
import "../dxgi"

@private Result :: win32.Hresult
@private Guid   :: dxgi.Guid

APPEND_ALLIGNED_ELEMENT : u32 : 0xffffffff

IID_Texture2D :: Guid {0x6f15aaf2, 0xd208, 0x4e89, {0x9a, 0xb4, 0x48, 0x95, 0x35, 0xd3, 0x4f, 0x9c}}

SDK_VERSION : u32 : 7

Adapter :: struct { }

Bind_Flags :: enum u32 {
    None             = 0x0,
    Vertex_Buffer    = 0x1,
    Index_Buffer     = 0x2,
    Constant_Buffer  = 0x4,
    Shader_Resource  = 0x8,
    Stream_Output    = 0x10,
    Render_Target    = 0x20,
    Depth_Stencil    = 0x40,
    Unordered_Access = 0x80,
    Decode           = 0x200,
    Video_Encoder    = 0x400,
}

Box :: struct { }

Cpu_Access_Flags :: enum u32 {
    None  = 0x0,
    Write = 0x10000,
    Read  = 0x20000,
}

Class_Instance :: struct { }

Device_Flags :: enum u32 {
    None                                          = 0x0,
    Single_Threaded	                              = 0x1,
    Debug	                                      = 0x2,
    Switch_To_Reference	                          = 0x4,
    Prevent_Internal_Threading_Optimizations      = 0x8,
    Bgra_Support                                  = 0x20,
    Debuggable                                    = 0x40,
    Prevent_Altering_Layer_Settings_From_Registry = 0x80,
    Disable_Gpu_Timeout                           = 0x100,
    Video_Support                                 = 0x800,
}

Map_Flags :: enum u32 {
    None        = 0,
    Do_Not_Wait = 0x100000,
}

Map_Type :: enum u32 {
    Read               = 1,
    Write              = 2,
    Read_Write         = 3,
    Write_Discard      = 4,
    Write_No_Overwrite = 5,
}

Mapped_Subresource :: struct {
    data        : rawptr,
    row_pitch   : u32,
    depth_pitch : u32,
}

Resource_Misc_Flags :: enum u32 {
    None                            = 0x0,
    Generate_Mips                   = 0x1,
    Shared                          = 0x2,
    Texture_Cube                    = 0x4,
    Draw_Indirect_Args              = 0x10,
    Buffer_Allow_Raw_Views          = 0x20,
    Buffer_Structured               = 0x40,
    Resource_Clamp                  = 0x80,
    Shared_Key_Mutex                = 0x100,
    Gdi_Compatible                  = 0x200,
    Shared_NT_Handle                = 0x800,
    Restricted_Content              = 0x1000,
    Restrict_Shared_Resource        = 0x2000,
    Restrict_Shared_Resource_Driver = 0x4000,
    Guarded                         = 0x8000,
    Tile_Pool                       = 0x20000,
    Tiled                           = 0x40000,
    HW_Protected                    = 0x80000,
}

Subresource_Data :: struct {
    sys_mem             : rawptr,
    sys_mem_pitch       : u32,
    sys_mem_slice_pitch : u32,
}

Usage :: enum u32 {
    Default   = 0,
    Immutable = 1,
    Dynamic   = 2,
    Staging   = 3,
}

Viewport :: struct {
    top_left_x : f32,
    top_left_y : f32,
    width      : f32,
    height     : f32,
    min_depth  : f32,
    max_depth  : f32,
}