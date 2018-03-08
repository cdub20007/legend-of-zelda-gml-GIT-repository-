// set a timer 
image_speed = 0;

switch(obj_player.direction){
    case 90:
        image_angle = 90;
    break;
    case 270:
        image_angle = 270;
    break;
    case 180:
        image_angle = 180;
    break;
    case 0:
        image_angle = 0;
    break;
}

alarm[0] = 10;
