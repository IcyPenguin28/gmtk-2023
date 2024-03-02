// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function execute_enemy_move(_enemy){
	if (_enemy == noone)
	{
		obj_textbox.text = "This gnome has perished at your hand!";
	}
	else
	{
		// Get enemy name for textbox
		var _name = "";
		var _attack = "";
		switch (_enemy.type)
		{
			case ELEMENTS.NORMAL:
				_name = "REGULAR GNOME";
				_attack = "GUT PUNCH";
				break;
			case ELEMENTS.FIRE:
				_name = "FIRE GNOME";
				_attack = "HEAT GUN";
				break;
			case ELEMENTS.ICE:
				_name = "ICE GNOME";
				_attack = "BLIZZARD";
				break;
			case ELEMENTS.ELEC:
				_name = "ELECTRIC GNOME";
				_attack = "HI-VOLTAGE";
				break;
			case ELEMENTS.KNIGHT:
				_name = "KNIGHT GNOME";
				_attack = "VALIANT STRIKE";
				break;
		}
	
		var _dodged = obj_globalcontroller.base == BASES.DRAGON && random_range(0,6) < 1;
		var _super = obj_globalcontroller.base == BASES.DRAGON && _enemy.type == ELEMENTS.ELEC ||
			obj_globalcontroller.base == BASES.YETI && _enemy.type == ELEMENTS.FIRE ||
			obj_globalcontroller.base == BASES.SLIME && _enemy.type == ELEMENTS.ICE;
		var _weak = obj_globalcontroller.base == BASES.DRAGON && _enemy.type == ELEMENTS.FIRE ||
			obj_globalcontroller.base == BASES.YETI && _enemy.type == ELEMENTS.ICE ||
			obj_globalcontroller.base == BASES.SLIME && _enemy.type == ELEMENTS.ELEC;
		obj_textbox.text = _name + " used " + _attack + "!";
		// Calculate damage
		var _calced_dmg = 25 + (obj_globalcontroller.victories/1.5);
		var _type = 0;
		// Super effective
		if _super
		{
			_calced_dmg *= 1.5;
			_type = 1;
			_calced_dmg = floor(_calced_dmg);
			obj_textbox.text  += " You take critical damage!";
		}
		// Not very effective
		else if _weak
		{
			_calced_dmg *= 0.5;
			_type = -1;
			_calced_dmg = floor(_calced_dmg);
			obj_textbox.text  += " How weak.";
		}
				
		if obj_fightcontroller.hubris > 0
		{
			_calced_dmg *= obj_fightcontroller.hubris;
			_type = clamp(_type,0,1);
		}
	
		if obj_fightcontroller.iron_shield > 0
		{
			_calced_dmg /= 3;
			_type = -1;
			_calced_dmg = floor(_calced_dmg);
		}
		
		//dragon dodge chance
		if _dodged {
			_calced_dmg = 0;
			_type = -2;
			obj_textbox.text  += " ... and missed !";
		}
		
		switch (_type) {
			case 0:
				audio_play_sound(snd_hit,2,false);
				break;
			case -1:
				audio_play_sound(snd_weakattack,2,false);
				break;
			case -2:
				audio_play_sound(snd_nullattack,2,false);
				break;
			case 1:
				audio_play_sound(snd_superattack,2,false);
				break;
		}
		// Deal the calced damage
		obj_fightcontroller.player_hp -= floor(_calced_dmg);
	}
}