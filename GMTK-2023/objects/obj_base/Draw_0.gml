/// @description Insert description here
// You can write your code in this editor

switch active_base
{
	case BASES.DRAGON:
		draw_sprite(spr_electricdragon, -1, x, y);
		break;
	case BASES.SLIME:
		draw_sprite(spr_slimeking, -1, x, y);
		break;
	default:
		draw_sprite(spr_errorbase, -1, x, y);
		break;
}

draw_self();

if position_meeting(mouse_x, mouse_y, self)
{
	window_set_cursor(cr_handpoint);
	draw_set_font(fnt_tooltip);
	// Display tooltip
	draw_set_color(c_black);
	draw_text(mouse_x + 14, mouse_y + 1, tooltip + "\n Click to change base characters");
	draw_set_color(c_white);
	draw_text(mouse_x + 14, mouse_y, tooltip + "\n Click to change base characters");
}
else
{
	window_set_cursor(cr_default);
}