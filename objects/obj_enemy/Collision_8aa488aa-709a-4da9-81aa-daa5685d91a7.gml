

//take dmg
if hp < 1
	{
	instance_destroy();
	instance_create_layer(x,y,"hearts",obj_heart);
	}
	else
	{
	hp --;	
	sound_play(snd_enemy_hit);
	}
	
	
//knockback 
speed = -spd*2;
alarm[0] = 30;


