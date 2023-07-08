/// @description Insert description here
// You can write your code in this editor
if room == rm_mainmenu
{
	draw_set_halign(fa_left);
	draw_set_valign(fa_middle);
	draw_set_font(fnt_tooltip);
	
	
	// Display Heroes' Strength
	draw_set_color(c_black);
	draw_text(256, 259, "Heroes' Strength:");
	draw_set_color(c_white);
	draw_text(256, 256, "Heroes' Strength:");
	
	switch(next_encounter.strength)
	{
		case ELEMENTS.NORMAL:
			draw_sprite(spr_icon_normal, 0, 480, 256);
			break;
		case ELEMENTS.FIRE:
			draw_sprite(spr_icon_fire, 0, 480, 256);
			break;
		case ELEMENTS.ICE:
			draw_sprite(spr_icon_ice, 0, 480, 256);
			break;
		case ELEMENTS.ELEC:
			draw_sprite(spr_icon_elec, 0, 480, 256);
			break;
	}
	
	// Display Heroes' Weakness
	draw_set_color(c_black);
	draw_text(256, 291, "Heroes' Weakness:");
	draw_set_color(c_white);
	draw_text(256, 288, "Heroes' Weakness:");
	
	switch(next_encounter.weakness)
	{
		case ELEMENTS.NORMAL:
			draw_sprite(spr_icon_normal, 0, 480, 288);
			break;
		case ELEMENTS.FIRE:
			draw_sprite(spr_icon_fire, 0, 480, 288);
			break;
		case ELEMENTS.ICE:
			draw_sprite(spr_icon_ice, 0, 480, 288);
			break;
		case ELEMENTS.ELEC:
			draw_sprite(spr_icon_elec, 0, 480, 288);
			break;
	}
	
	// Display Reward Money
	draw_set_color(c_black);
	draw_text(256, 323, "Reward: " + string(next_encounter.reward) + "G");
	draw_set_color(c_white);
	draw_text(256, 320, "Reward: " + string(next_encounter.reward) + "G");
	
}