/// @description Insert description here
// You can write your code in this editor

// Change sprite based on type
switch type
{
	case ELEMENTS.NORMAL:
		sprite_index = spr_gnome_normal;
		break;
	case ELEMENTS.FIRE:
		sprite_index = spr_gnome_fire;
		break;
	case ELEMENTS.ICE:
		sprite_index = spr_gnome_ice;
		break;
	case ELEMENTS.ELEC:
		sprite_index = spr_gnome_elec;
		break;
	case ELEMENTS.KNIGHT:
		sprite_index = spr_gnome_knight;
		break;
}

if hp <= 0
{
	var _ind = array_get_index(obj_fightcontroller.active_enemies, id);
	// array_delete(obj_fightcontroller.active_enemies, _ind, 1);
	obj_fightcontroller.active_enemies[_ind] = noone;
	show_debug_message(obj_fightcontroller.active_enemies);
	instance_destroy();
}