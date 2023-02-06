// If you have shader compilation problems, try changing this to 130
#version 150

uniform float uSquareShift;
uniform int uWindowWidth;
uniform int uWindowHeight;

in vec2 aPosition;
in vec2 aTexCoord;

out vec2 vTexCoord;

void main() {
    float aspectRatio = uWindowHeight * 1.0 / uWindowWidth * 1.0;
    if (aspectRatio < 1.0)
    {
        gl_Position = vec4(aPosition.x * aspectRatio + uSquareShift, aPosition.y, 0, 1);
    }
    else
    {
        gl_Position = vec4(aPosition.x + uSquareShift, aPosition.y / aspectRatio, 0, 1);
    }
    vTexCoord = aTexCoord;
}
