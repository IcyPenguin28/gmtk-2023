/// @description Insert description here
// You can write your code in this editor
draw_self();
switch properties.element
{
	case ELEMENTS.NORMAL:
		sprite_index = spr_moveblock_white;
		draw_sprite(spr_icon_normal, 0, x - 48, y);
		break;
	case ELEMENTS.FIRE:
		sprite_index = spr_moveblock_red;
		draw_sprite(spr_icon_fire, 0, x - 48, y);
		break;
	case ELEMENTS.ICE:
		sprite_index = spr_moveblock_blue;
		draw_sprite(spr_icon_ice, 0, x - 48, y);
		break;
	case ELEMENTS.ELEC:
		sprite_index = spr_moveblock_yellow;
		draw_sprite(spr_icon_elec, 0, x - 48, y);
		break;
}

draw_set_color(c_black);
draw_set_font(fnt_tooltip);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_text(x - 16, y, properties.name);