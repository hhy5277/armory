#version 450

#include "compiled.inc"
#include "std/gbuffer.glsl"

uniform sampler2D tex;

in vec2 texCoord;
out vec4 fragColor;

void main() {
	vec4 col = textureLod(tex, texCoord, 0.0);
	vec3 n = getNor(col.rg);
	fragColor.rgb = n * 0.5 + 0.5;
}
