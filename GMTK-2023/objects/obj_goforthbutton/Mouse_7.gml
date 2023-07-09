/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if (array_length(obj_globalcontroller.unlocked_moves) >= 2)
{
	room_goto(rm_fight);
}
else
{
	audio_play_sound(snd_poor, 0, false);
	my_label = "BUY\nMOVES!";
}