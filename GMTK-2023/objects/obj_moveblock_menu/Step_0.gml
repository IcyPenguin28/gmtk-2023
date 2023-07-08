/// @description Insert description here
// You can write your code in this editor

// Constantly update
if array_length(obj_globalcontroller.unlocked_moves) > move_slot
{
	var _struct = obj_globalcontroller.unlocked_moves[index];
	properties = {
		name : _struct.name,
		tooltip : _struct.tooltip,
		element : _struct.element,
		cost : _struct.cost
	}
}
else
{
	properties = {
		name : "",
		tooltip : "EMPTY! Buy a move from the shop!",
		element : -1,
		cost : 0
	}
}