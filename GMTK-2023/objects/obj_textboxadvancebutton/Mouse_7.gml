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
	else if obj_fightcontroller.turn == 0
	{
		obj_fightcontroller.turn = (obj_fightcontroller.turn + 1) % (array_length(obj_fightcontroller.active_enemies) + 1);
		
		execute_enemy_move(obj_fightcontroller.active_enemies[obj_fightcontroller.turn - 1]);
		
	}
	else if obj_fightcontroller.turn >= 1 && obj_fightcontroller.turn < array_length(obj_fightcontroller.active_enemies)
	{
		// Enemy turns
		obj_fightcontroller.turn = (obj_fightcontroller.turn + 1) % (array_length(obj_fightcontroller.active_enemies) + 1);
		execute_enemy_move(obj_fightcontroller.active_enemies[obj_fightcontroller.turn - 1]);
	}
	else if obj_fightcontroller.turn == array_length(obj_fightcontroller.active_enemies)
	{
		text = "";
		obj_fightcontroller.player_is_acting = false;
		obj_fightcontroller.targets = [];
		obj_fightcontroller.targeting = false;
		obj_fightcontroller.playeraction = noone;
		obj_fightcontroller.created_moves = false;
		
		obj_fightcontroller.turn = 0;
	}
}

if obj_fightcontroller.iron_shield > 0
{
	obj_fightcontroller.iron_shield --;
}

if instance_number(obj_gnome) == 0
{
	obj_fightcontroller.win = true;
}

if obj_fightcontroller.hp <= 0
{
	obj_fightcontroller.lose = true;
}