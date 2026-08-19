image_speed = 0;
//variables that stay the same on in-game restart
global.vsync = false;
global.fullscreen_checked = window_get_fullscreen();

if (global.fullscreen_checked)
{
image_index = 1;
}
else
{
image_index = 0;
}