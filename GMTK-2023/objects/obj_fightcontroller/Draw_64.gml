/// @description Insert description here
// You can write your code in this editor

// Healthbar
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

var xx = 96;
var yy = 60;
var _width = 190
var _height = 25;
var _red = #e43b44
var _green = #3e8948

player_hp_display = clamp(player_hp_display- (player_hp_display-(player_hp / player_maxhp)) * .1,0,1)

draw_rectangle_color(xx+32,yy+10,xx+32+_width,yy+_height,_red,_red,_red,_red,false)
draw_rectangle_color(xx+32,yy+10,xx+32+(_width*player_hp_display),yy+_height,_green,_green,_green,_green,false)
draw_sprite(spr_bosshp,0,16,16)
draw_sprite(spr_bossicons,obj_globalcontroller.base,16+6,16+6)

var _icon_x = 120;
draw_set_font(fnt_textbox)

if (hubris > 0) {
	draw_sprite(spr_hubrisicon,-1,_icon_x,yy-40)
	draw_set_color(c_black)
	draw_text(_icon_x+60,yy-8,"x"+string(hubris/2))
	draw_set_color(c_white)
	draw_text(_icon_x+60,yy-10,"x"+string(hubris/2))
	_icon_x += 76;
}
if (iron_shield > 0) {
	draw_sprite(spr_deficon,-1,_icon_x,yy-40)
	draw_set_color(c_black)
	draw_text(_icon_x+60,yy-8,"x"+string(iron_shield))
	draw_set_color(c_white)
	draw_text(_icon_x+60,yy-10,"x"+string(iron_shield))
	_icon_x += 76;
}

//draw_sprite(spr_bosshpseperator,-1,)

if position_meeting(mouse_x, mouse_y, obj_gnome)
{
	window_set_cursor(cr_handpoint);
}
else if !position_meeting(mouse_x, mouse_y, obj_button) && !position_meeting(mouse_x, mouse_y, obj_moveblock_fight)
{
	window_set_cursor(cr_default);
}