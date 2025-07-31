#ifdef GL_ES
precision mediump float;
#endif
varying vec4 vColor;
varying vec2 vTexCoord;
uniform sampler2D u_texture;
void main() {
  vec2 uv = fract(vTexCoord);
  gl_FragColor = vColor * texture2D(u_texture, uv);
}
