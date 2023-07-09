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
		}
	
		obj_textbox.text = _name + " used " + _attack + "!";
	
		// Calculate damage
		var _calced_dmg = 25;
				
		// Super effective
		if obj_globalcontroller.base == BASES.DRAGON && _enemy.type == ELEMENTS.ELEC ||
			obj_globalcontroller.base == BASES.YETI && _enemy.type == ELEMENTS.FIRE ||
			obj_globalcontroller.base == BASES.SLIME && _enemy.type == ELEMENTS.ICE
		{
			_calced_dmg *= 1.5;
			_calced_dmg = floor(_calced_dmg);
		}
		// Not very effective
		else if obj_globalcontroller.base == BASES.DRAGON && _enemy.type == ELEMENTS.FIRE ||
			obj_globalcontroller.base == BASES.YETI && _enemy.type == ELEMENTS.ICE ||
			obj_globalcontroller.base == BASES.SLIME && _enemy.type == ELEMENTS.ELEC
		{
			_calced_dmg *= 0.5;
			_calced_dmg = floor(_calced_dmg);
		}
				
		if obj_fightcontroller.hubris > 0
		{
			_calced_dmg *= obj_fightcontroller.hubris;
		}
	
		if obj_fightcontroller.iron_shield > 0
		{
			_calced_dmg /= 3;
			_calced_dmg = floor(_calced_dmg);
		}
				
		// Deal the calced damage
		obj_fightcontroller.player_hp -= _calced_dmg;
	}
}