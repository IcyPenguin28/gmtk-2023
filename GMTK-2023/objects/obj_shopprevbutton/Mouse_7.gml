/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if obj_globalcontroller.page > 0
{
	obj_globalcontroller.page --;
}
else
{
	obj_globalcontroller.page = array_length(obj_globalcontroller.catalog) - 1;
}

// Restore missing buttons
// Top left
if !instance_place(192, 64, obj_moveblock)
{
	with (instance_create_layer(192, 64, "Instances", obj_moveblock))
	{
		position = 0;
	}
}

// Top right
if !instance_place(448, 64, obj_moveblock)
{
	with (instance_create_layer(448, 64, "Instances", obj_moveblock))
	{
		position = 1;
	}
}

// Bottom left
if !instance_place(192, 176, obj_moveblock)
{
	with (instance_create_layer(192, 176, "Instances", obj_moveblock))
	{
		position = 2;
	}
}

// Bottom right
if !instance_place(448, 176, obj_moveblock)
{
	with (instance_create_layer(448, 176, "Instances", obj_moveblock))
	{
		position = 3;
	}
}

show_debug_message(obj_globalcontroller.page);