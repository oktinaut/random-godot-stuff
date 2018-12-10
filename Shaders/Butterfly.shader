shader_type spatial;
render_mode skip_vertex_transform;
render_mode cull_disabled;

uniform sampler2D wingSampler;

void vertex() {
	float time = TIME * 8.0;
	float w = (UV.x - 0.5) * 2.0;
	
	VERTEX = (MODELVIEW_MATRIX * vec4(VERTEX + vec3(w * abs(sin(time)) * 0.25, abs(w) * sin(time) * 0.8, 0.0), 1.0)).xyz;
    NORMAL = (MODELVIEW_MATRIX * vec4(NORMAL, 0.0)).xyz;
}

void fragment() {
	vec4 tex = textureLod(wingSampler, UV, 0.0);
	ALBEDO = tex.rgb;
	ALPHA = tex.a * 0.9;
}