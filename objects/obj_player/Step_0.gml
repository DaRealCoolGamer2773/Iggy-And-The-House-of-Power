//keys
right_key = keyboard_check(vk_right) || keyboard_check(ord("D"));
left_key = keyboard_check(vk_left) || keyboard_check(ord("A"));
up_key = keyboard_check(vk_up) || keyboard_check(ord("W"));
down_key = keyboard_check(vk_down) || keyboard_check(ord("S"));
run_key = keyboard_check(vk_shift) || keyboard_check(ord("X"));


//get xspd and yspd
//if xspd == 0 && yspd == 0 {}
//else
//{
//	move_spd = 1 + run_key;
//}

//logically equivalent to code above, read as "if xspd and yspd are not both zero..."
//if !(xspd == 0 && yspd == 0)
//{
//	move_spd = 1 + run_key;
//}

//old velocity calculation
//xspd = (right_key - left_key) * move_spd;
//yspd = (down_key - up_key) * move_spd;

//this is probably nicer though, no conditionals required. treats run key as a 2x speed multiplier
base_move_spd = 1;
xspd = (right_key - left_key) * base_move_spd * (1+run_key);
yspd = (down_key - up_key) * base_move_spd * (1+run_key);


//pause (by forcing velocity to be zero)
if instance_exists(obj_pauser) ||  instance_exists(obj_textbox)
{
	xspd = 0;
	yspd = 0;
}


//set sprite, old

//if xspd > 0 && face == LEFT 
//{
//	face = RIGHT
//}
//if xspd < 0 && face == RIGHT 
//{
//	face = LEFT
//}
//if xspd == 0
//{
//	if yspd > 0 {face = DOWN}
//	if yspd < 0 {face = UP}
//}
//if yspd > 0 && face == UP 
//{
//	face = DOWN
//}
//if yspd < 0 && face == DOWN 
//{
//	face = UP
//}
//if yspd == 0
//{
//	if xspd > 0 {face = RIGHT}
//	if xspd < 0 {face = LEFT}
//}

//set sprite, new (set sprite based on movement direction, but IF AND ONLY IF the player is moving in a cardinal direction)
if xspd != 0 xor yspd != 0
{
	if xspd > 0 //moving right
	{
		face = RIGHT;
	}
	else if xspd < 0 //moving left
	{
		face = LEFT;
	}
	//neither right nor left, start going by yspd
	else if yspd < 0 //moving up
	{
		face = UP;
	}
	else if yspd > 0 //moving down
	{
		face = DOWN;
	}
}

sprite_index = sprite[face];

//collisions
if place_meeting(x + xspd, y, obj_wall) == true
{
	xspd = 0;
}
if place_meeting(x, y + yspd, obj_wall) == true
{
	yspd = 0;
}


//move the player
x += xspd;
y += yspd;


//animate
if xspd == 0 && yspd == 0
{
	image_index = 0;
}
image_speed = move_spd;
	
	
//depth
depth = -bbox_bottom;


//restart game
if keyboard_check_pressed(vk_escape)
{
	create_textbox("pause_screen");
}