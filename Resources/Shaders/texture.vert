#version 330 core

layout(location = 0) in vec3 aPos;
layout(location = 1) in vec2 aTexCoord;

out vec2 texCoord;

uniform mat4 u_model;
uniform mat4 u_view;
uniform mat4 u_proj;
uniform vec2 u_texOffset;

void main()
{
  gl_Position = u_proj * u_view * u_model * vec4(aPos, 1.0);
  texCoord = aTexCoord + u_texOffset;
}
