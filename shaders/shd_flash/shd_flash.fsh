//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float _alpha;


void main()
{
	vec4 color = texture2D( gm_BaseTexture, v_vTexcoord );
	// https://www.youtube.com/watch?v=g7uhXXUgeAM
	if (color.a != 0.0) {
		gl_FragColor = vec4(255, 255, 255, _alpha);
	}
}
