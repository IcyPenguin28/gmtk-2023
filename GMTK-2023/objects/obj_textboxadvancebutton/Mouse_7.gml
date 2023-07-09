/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

with (obj_textbox)
{
	if text == "A party of heroic gnomes is trying to get past.\nHow cute." ||
		text == "A single gnome adventurer has come for your head.\nAs if."
	{
		text = "";
		obj_fightcontroller.turn = 0;
	}
}