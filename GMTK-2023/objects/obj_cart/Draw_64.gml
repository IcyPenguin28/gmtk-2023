/// @description Insert description here
// You can write your code in this editor
draw_set_font(fnt_tooltip);

draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_set_color(c_white);

draw_sprite(spr_coin, -1, display_get_gui_width() / 2 - sprite_get_width(spr_coin), display_get_gui_height() - sprite_get_height(spr_coin) - 8);
draw_text(display_get_gui_width() / 2,  display_get_gui_height() - sprite_get_height(spr_coin) - 8, string(obj_globalcontroller.total_funds));