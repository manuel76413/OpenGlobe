﻿#version 150
//
// (C) Copyright 2010 Patrick Cozzi and Deron Ohlarik
//
// Distributed under the Boost Software License, Version 1.0.
// See License.txt or http://www.boost.org/LICENSE_1_0.txt.
//

in vec4 position;
in vec2 textureCoordinates;

out vec2 fsTextureCoordinates;

uniform mat4 mg_viewportOrthographicProjectionMatrix;

void main()                     
{
    gl_Position = mg_viewportOrthographicProjectionMatrix * position;
    fsTextureCoordinates = textureCoordinates;
}