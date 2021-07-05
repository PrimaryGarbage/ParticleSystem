#shader vertex
#version 330 core

layout(location = 0) in vec2 position;
layout(location = 1) in vec2 uv;

out vec2 v_uv;

uniform mat4 u_MVP;

void main()
{
	gl_Position = u_MVP * pisition;
	v_uv = uv;
}

#shader fragment
#version 330 core

layout (location = 0) out vec4 color;

in vec2 v_uv;

uniform sampler2D u_Texture;

void main()
{
	vec4 texColor = texture(u_Texture, v_uv);
	color = texColor;
}