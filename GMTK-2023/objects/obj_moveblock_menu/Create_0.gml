/// @description Insert description here
// You can write your code in this editor

move_slot = move_slot;	// 0 is move #1, 1 is move #2
partner = partner;		// The instance ID of the parallel move slot
index = move_slot;

if array_length(obj_globalcontroller.unlocked_moves) > move_slot
{
	var _struct = obj_globalcontroller.unlocked_moves[index];
	properties = {
		name : _struct.name,
		tooltip : _struct.tooltip,
		element : _struct.element,
		cost : _struct.cost,
		selects_target : _struct.selects_target
	}

}
else
{
	properties = {
		name : "",
		tooltip : "You don't own a move!\nBuy a move from the shop!",
		element : -1,
		cost : 0,
		selects_target : false
	}
}
//sset block to last equipped if that exists.
