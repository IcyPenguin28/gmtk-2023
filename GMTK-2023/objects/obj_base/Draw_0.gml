/// @description Insert description here
// You can write your code in this editor

switch active_base
{
	case BASES.DRAGON:
		draw_sprite(spr_firedragon, -1, x, y);
		break;
	case BASES.YETI:
		draw_sprite(spr_yeti, -1, x, y);
		break;
	case BASES.SLIME:
		draw_sprite(spr_slimeking, -1, x, y);
		break;
	default:
		draw_sprite(spr_errorbase, -1, x, y);
		break;
}

draw_self();