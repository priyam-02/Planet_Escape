//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
	
	vec4 base_color = texture2D( gm_BaseTexture, v_vTexcoord );
    //base_color.a = step(0.5, fract(gm_Milliseconds / 500.0) * 5);
	base_color.rgb = mix(base_color.rgb, vec3(119.0, 156.0, 175.0), 5.0); // vec3(1.0);
    gl_FragColor = base_color;

}
