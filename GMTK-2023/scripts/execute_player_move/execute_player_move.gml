// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function execute_player_move(_move_name){
	var _base_name = "PLAYER";
	
	// Get player character name for textbox
	switch (obj_globalcontroller.base)
	{
		case BASES.DRAGON:
			_base_name = "FIRE DRAGON";
			break;
		case BASES.YETI:
			_base_name = "YETI"
			break;
		case BASES.SLIME:
			_base_name = "SLIME KING";
			break;
		default:
			_base_name = "PLAYER";
			break;
	}
	
	switch (_move_name)
	{
		// Wacky moves first, the rest (aka damaging moves) have the same basic structure and thus can be used as the default case
		case "CHEESE-\nBURGER":
			obj_textbox.text = _base_name + " ate a CHEESEBURGER and\nrestored some HP!";
			obj_fightcontroller.player_hp += (obj_fightcontroller.player_maxhp / 4);
			break;
		case "":
			obj_textbox.text = _base_name + " did nothing!";
			break;
		case "HUBRIS\nHUFF":
			obj_textbox.text = _base_name + " used " + _move_name + "!";
			obj_fightcontroller.hubris += 2;
			break;
		case "IRON\nSHIELD":
			obj_textbox.text = _base_name + " used " + _move_name + "!\nDefense up for 3 turns starting now.";
			obj_fightcontroller.iron_shield = 3;
			break;
		case "PICK-\nPOCKET":
			var _stolen = floor(obj_globalcontroller.next_encounter.reward * 0.2);
			if (obj_globalcontroller.next_encounter.reward - _stolen <= 0)
			{
				obj_textbox.text = _base_name + " used " + _move_name + "\n...but they're out of money!";
			}
			else
			{
				var _success = choose(true, false);
				if !_success
				{
					obj_textbox.text = _base_name + " used " + _move_name + "\n...but they noticed!";
				}
				else
				{
					obj_textbox.text = _base_name + " used " + _move_name + "\nand got away with " + _stolen +"G!";
					obj_globalcontroller.next_encounter.reward -= _stolen;
				}
			}
			break;
		default:
			obj_textbox.text = _base_name + " used " + _move_name + "!";
			
			for (var i = 0; i < array_length(obj_fightcontroller.targets); i++;)
			{
				// Calculate damage
				var _calced_dmg = 55*(random_range(0.85,1));
				var _type = 0;
				//multidamage moves do less
				if (!playeraction.selects_target) _calced_dmg /= 1.5;
				
				// Group weakness, super effective
				if obj_fightcontroller.playeraction.element == obj_fightcontroller.group_weakness
				{
					_calced_dmg *= 1.5;
					_type = 1;
					_calced_dmg = floor(_calced_dmg);
				}
				// Same-type, not very effective
				else if targets[i].type == obj_fightcontroller.playeraction.element
				{
					_calced_dmg *= 0.5;
					_type = -1;
					_calced_dmg = floor(_calced_dmg);
				}
				
				if obj_fightcontroller.hubris > 0
				{
					_calced_dmg *= hubris;
				}
				
				// Deal the calced damage
				targets[i].hp -= _calced_dmg;
				
				switch (_type) {
					case 0:
						audio_play_sound(snd_hit,2,false);
						break;
					case -1:
						audio_play_sound(snd_weakattack,2,false);
						break;
					case 1:
						audio_play_sound(snd_superattack,2,false);
						break;
				}
				
			}
			break;
	}
}