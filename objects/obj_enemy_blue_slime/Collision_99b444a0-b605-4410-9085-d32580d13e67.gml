/// @description  Take Damage

if knock = false {
    if hp > 0 { hp--; }
    if hp < 1 { 
        sprite_index = spr_death;
        motion_set(direction,0);
        alarm[1] = 10;
			instance_create_layer(x,y,"hearts",obj_heart);
    }
}

/// Knockback

if knock = false {
    motion_set(obj_player.direction,spd*4);
    knock = true;
    alarm[2] = 10;
}
sound_play(snd_enemy_hit);