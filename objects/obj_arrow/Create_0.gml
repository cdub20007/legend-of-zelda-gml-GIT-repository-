hsp = -8;
image_speed = 0;

switch(obj_player.direction){
    case 90:
        image_angle = 90;
		vspeed = -8;
    case 270:
        image_angle = 270;
		vspeed = 8;
    break;
    case 180:
        image_angle = 180;
		speed = -8;
    break;
    case 0:
        image_angle = 0; 
		speed = 8;
    break;
}

alarm[0] = 10;