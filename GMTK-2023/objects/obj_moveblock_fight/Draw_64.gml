/// @description Insert description here
// You can write your code in this editor
if position_meeting(mouse_x, mouse_y, self)
{
	draw_set_font(fnt_tooltip);
	
	if mouse_x > display_get_gui_width() / 2
	{
		draw_set_halign(fa_right);
	}
	else
	{
		draw_set_halign(fa_left);
	}
	draw_set_valign(fa_top);
	// Display tooltip
	draw_set_color(c_black);
	draw_text(mouse_x + polarize(mouse_x <= display_get_gui_width() / 2) * 14, mouse_y + 3, properties.tooltip + "\nClick to use");
	draw_set_color(c_white);
	draw_text(mouse_x + polarize(mouse_x <= display_get_gui_width() / 2) * 14, mouse_y, properties.tooltip + "\nClick to use");
}

if position_meeting(mouse_x, mouse_y, obj_moveblock_fight)
{
	window_set_cursor(cr_handpoint);
}
else if !position_meeting(mouse_x, mouse_y, obj_button)
{
	window_set_cursor(cr_default);
}