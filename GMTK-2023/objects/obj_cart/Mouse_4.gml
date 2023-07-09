/// @description Insert description here
// You can write your code in this editor

if total_cost <= obj_globalcontroller.total_funds
{
	// Player has enough to buy the items
	audio_play_sound(snd_purchase, 0, false);
	
	// Take their money
	obj_globalcontroller.total_funds -= total_cost;
	
	// Mark everything in the items array as purchased
	for (var i = 0; i < array_length(items); i++)
	{
		array_push(obj_globalcontroller.unlocked_moves, items[i]);
	}
	
	room_goto(rm_mainmenu);
}
else
{
	// You are too poor
	audio_play_sound(snd_poor, 0, false);
	room_restart();
}