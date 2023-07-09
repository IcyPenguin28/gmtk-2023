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