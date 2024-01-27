#include <SDL2/SDL_video.h>

#include "engine/defines.h"

#define GLEW_STATIC
#include <GL/glew.h>
#define SDL_MAIN_HANDLED
#include <SDL2/SDL.h>
#include <stdbool.h>
#include <stdio.h>

int main(void) {
    SDL_GL_SetAttribute(SDL_GL_CONTEXT_PROFILE_MASK, SDL_GL_CONTEXT_PROFILE_CORE);

    return 0;
}
