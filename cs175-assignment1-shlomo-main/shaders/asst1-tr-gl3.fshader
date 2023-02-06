// If you have shader compilation problems, try changing this to 130
#version 150

uniform sampler2D uTex2;

in vec2 vTexCoord;

out vec4 fragColor;

void main(void) {

    // The texture(..) calls always return a vec4. Data comes out of a texture
    // in RGBA format
    vec4 texColor2 = texture(uTex2, vTexCoord);
    vec4 Rainbow = vec4(vTexCoord.x, vTexCoord.y, 0.0, 1.0) + vec4 (0.5, 0.5, 0.5, 0.5);

    // fragColor is a vec4. The components are interpreted as red, green, blue,
    // and alpha
    
    fragColor = texColor2 * Rainbow;
}
