/// @description Insert description here
// You can write your code in this editor

// Healthbar
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

var xx = 96;
var yy = 60;
var _width = 222
var _height = 25;
var _red = #e43b44
var _green = #3e8948

player_hp_display = player_hp_display- (player_hp_display-(player_hp / player_maxhp)) * .1

draw_rectangle_color(xx+32,yy+10,xx+_width,yy+_height,_red,_red,_red,_red,false)
draw_rectangle_color(xx+32,yy+10,xx+(_width*player_hp_display),yy+_height,_green,_green,_green,_green,false)
draw_sprite(spr_bosshp,0,16,16)
draw_sprite(spr_bossicons,obj_globalcontroller.base,16+6,16+6)
//draw_sprite(spr_bosshpseperator,-1,)

if position_meeting(mouse_x, mouse_y, obj_gnome)
{
	window_set_cursor(cr_handpoint);
}
else if !position_meeting(mouse_x, mouse_y, obj_button) && !position_meeting(mouse_x, mouse_y, obj_moveblock_fight)
{
	window_set_cursor(cr_default);
}