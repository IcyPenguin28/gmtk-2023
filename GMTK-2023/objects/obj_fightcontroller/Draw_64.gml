/// @description Insert description here
// You can write your code in this editor

// Healthbar
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

var xx = 320;
var yy = 32;
var _padding = 24;
draw_healthbar(xx - display_get_gui_width() / 2 + _padding, yy + 32, x + display_get_gui_width() / 2 - _padding, yy, (player_hp / player_maxhp) * 100, c_black, c_red, c_red, 0, true, false);

if position_meeting(mouse_x, mouse_y, obj_gnome)
{
	window_set_cursor(cr_handpoint);
}
else if !position_meeting(mouse_x, mouse_y, obj_button) && !position_meeting(mouse_x, mouse_y, obj_moveblock_fight)
{
	window_set_cursor(cr_default);
}