with (obj_player)
{
		slide_transition(TRANS_MODE.GOTO,other.target);
		audio_stop_sound(snd_dungeon_1);
		hasbow = true;
}
