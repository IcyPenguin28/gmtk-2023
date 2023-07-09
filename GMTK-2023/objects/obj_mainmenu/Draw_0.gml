draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_set_font(fnt_tooltip);

draw_set_color(c_black);
draw_text(5,350,"v"+GM_version)
draw_set_color(c_white);
draw_text(5,347,"v"+GM_version)

draw_sprite(characters[step],-1,character_x,190);