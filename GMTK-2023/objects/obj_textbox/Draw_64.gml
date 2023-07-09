/// @description Insert description here
// You can write your code in this editor

var _text_x = 64;
var _text_y = 288;
draw_set_font(fnt_textbox);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_set_color(c_black);
draw_text(_text_x, _text_y + 3, text);
draw_set_color(c_white);
draw_text(_text_x, _text_y, text);