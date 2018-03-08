/// @description  Change direction
if knock = false{
    direction = choose(90,270,180,0,direction,direction);
    motion_set(direction,spd);
    image_angle = direction;
    alarm[0] = choose(30,60,90);
}

if (random(1) < 1/10) {
    shot = instance_create_layer(x,y,"projectiles",obj_projectile);
    shot.direction = direction;
}

