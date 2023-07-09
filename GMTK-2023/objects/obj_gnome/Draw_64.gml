/// @description Insert description here
// You can write your code in this editor

// Healthbar
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

var _padding = 24;
draw_healthbar(x - sprite_width / 2 + _padding, y - sprite_height / 2 + 4, x + sprite_width / 2 - _padding, y - sprite_height / 2, (hp / maxhp) * 100, c_black, c_red, c_green, 0, true, false);

if position_meeting(mouse_x, mouse_y, obj_gnome)
{
	window_set_cursor(cr_handpoint);
}
else if !position_meeting(mouse_x, mouse_y, obj_button) && !position_meeting(mouse_x, mouse_y, obj_moveblock_fight)
{
	window_set_cursor(cr_default);
}