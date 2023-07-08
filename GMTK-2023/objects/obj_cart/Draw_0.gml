/// @description Insert description here
// You can write your code in this editor
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_self();

draw_circle_color(x + sprite_width / 2, y - sprite_height / 2, 12, c_red, c_red, false);
draw_set_font(fnt_tooltip);
draw_set_color(c_black);
draw_text(x + sprite_width / 2, y - sprite_height / 2 + 3, string(num_items));
draw_set_color(c_white);
draw_text(x + sprite_width / 2, y - sprite_height / 2, string(num_items));
draw_set_color(c_black);
draw_text(x, y + sprite_height / 2 + 3, string(total_cost));
draw_set_color(c_white);
draw_text(x, y + sprite_height / 2, string(total_cost));

if position_meeting(mouse_x, mouse_y, obj_cart)
{
	window_set_cursor(cr_handpoint);
	draw_set_font(fnt_tooltip);
	
	if mouse_x > display_get_gui_width() / 2
	{
		draw_set_halign(fa_right);
	}
	draw_set_valign(fa_top);
	// Display tooltip
	draw_set_color(c_black);
	draw_text(mouse_x + polarize(mouse_x <= display_get_gui_width() / 2) * 14, mouse_y + 3, "Click to check out");
	draw_set_color(c_white);
	draw_text(mouse_x + polarize(mouse_x <= display_get_gui_width() / 2) * 14, mouse_y, "Click to check out");
}
else if !position_meeting(mouse_x, mouse_y, obj_button) && !position_meeting(mouse_x, mouse_y, obj_cart)
{
	window_set_cursor(cr_default);
}