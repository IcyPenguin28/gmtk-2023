/// @description Insert description here
// You can write your code in this editor
draw_self();

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(fnt_buttonlabel);
draw_set_color(c_black);
var drawpoint = 0;
if (os_browser != browser_not_a_browser) drawpoint = -10;
draw_text_ext(x, y+drawpoint, my_label,40,200);

if position_meeting(mouse_x, mouse_y, self)
{
	window_set_cursor(cr_handpoint);
}
else if !position_meeting(mouse_x, mouse_y, obj_base) && !position_meeting(mouse_x, mouse_y, obj_moveblock)
{
	window_set_cursor(cr_default);	
}