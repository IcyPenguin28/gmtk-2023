/// @description Insert description here
// You can write your code in this editor

if !instance_place(x, y, obj_moveblock)
{
	being_carried = true;	
}

if being_carried
{
	x = mouse_x;
	y = mouse_y;
	depth = -1000;
}