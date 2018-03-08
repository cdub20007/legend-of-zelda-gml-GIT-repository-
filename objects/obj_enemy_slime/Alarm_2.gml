/// @description  Reset Knockback state

knock = false;

direction = choose(90,270,180,0);
motion_set(direction,spd);
image_angle = direction;
alarm[0] = choose(10,20,30);

