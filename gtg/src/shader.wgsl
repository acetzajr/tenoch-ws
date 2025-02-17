@vertex
fn vs_main(@builtin(vertex_index) in_vertex_index: u32) -> @builtin(position) vec4<f32> {
    let x = switch in_vertex_index {
        0u => 0.0,
        1u => 0.5,
        2u => -0.5,
        default => 0.0,
    };
    let y = switch in_vertex_index {
        0u => 0.5,
        1u => -0.5,
        2u => -0.5,
        default => 0.0,
    };
    return vec4<f32>(x, y, 0.0, 1.0);
}

@fragment
fn fs_main() -> @location(0) vec4<f32> {
    return vec4<f32>(1.0, 0.0, 0.0, 1.0); // Red
}