if !audio_is_playing(snd_mainmenu)
{
	audio_play_sound(snd_mainmenu, 0, true);
}

obj_base.active_base = obj_globalcontroller.base;