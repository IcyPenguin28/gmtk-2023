/// @description Insert description here
// You can write your code in this editor

// Player clicked on base image on main menu, go to base select
if active_base == base_count - 1
{
	active_base = 0;
}
else
{
	active_base ++;
}

obj_globalcontroller.base = active_base;