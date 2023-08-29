/// @description Insert description here
// You can write your code in this editor
frame+= .02;
character_x -= abs((cos(frame)/sin(frame)))
if (character_x < -20) {
	character_x = 700;
	show_debug_message(frame)
	frame = -3.17;
	step++;
	if (step >= array_length(characters)) step = 0;
}
if (!audio_is_playing(snd_mainmenu)) {
	audio_play_sound(snd_mainmenu, 0, true);
}