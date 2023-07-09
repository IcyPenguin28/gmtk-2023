/// @description Insert description here
// You can write your code in this editor

move_slot = 0;	// 0 is move #1, 1 is move #2
partner = noone;

properties = {
	name : "",
	tooltip : "You don't own a move!\nBuy a move from the shop!",
	element : -1,
	cost : 0,
	selects_target : false
}

if move_slot == 0
{
	properties = obj_globalcontroller.slot1;
}
else
{
	properties = obj_globalcontroller.slot2;
}