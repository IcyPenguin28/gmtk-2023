/// @description Insert description here
// You can write your code in this editor

switch active_base
{
	case BASES.DRAGON:
		draw_sprite(spr_electricdragon, 0, x, y);
	case BASES.SLIME:
		draw_sprite(spr_slimeking, 0, x, y);
	default:
		draw_sprite(spr_errorbase, 0, x, y);
}

draw_self();