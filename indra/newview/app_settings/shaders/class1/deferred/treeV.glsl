/** 
 * @file treeV.glsl
 *
 * Copyright (c) 2007-$CurrentYear$, Linden Research, Inc.
 * $License$
 */
 


varying vec3 vary_normal;

void main()
{
	//transform vertex
	gl_Position = ftransform(); 
	gl_TexCoord[0] = gl_TextureMatrix[0] * gl_MultiTexCoord0;
	
	vary_normal = normalize(gl_NormalMatrix * gl_Normal);

	gl_FrontColor = gl_Color;
}
