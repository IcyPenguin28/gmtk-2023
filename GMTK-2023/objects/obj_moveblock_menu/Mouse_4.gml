/// @description Insert description here
// You can write your code in this editor

// Earliest player will be able to cycle is when they have 3 moves
if array_length(obj_globalcontroller.unlocked_moves) >= 3
{
	// Prevent dupes
	if string(obj_globalcontroller.unlocked_moves[(index + 1) % array_length(obj_globalcontroller.unlocked_moves)]) == string(partner.properties)
	{
		index = ((index + 2) % array_length(obj_globalcontroller.unlocked_moves));
	}
	else
	{
		index = ((index + 1) % array_length(obj_globalcontroller.unlocked_moves));
	}
}

if move_slot == 0
{
	obj_globalcontroller.slot1 = properties;
}
else if move_slot == 1
{
	obj_globalcontroller.slot2 = properties;
}