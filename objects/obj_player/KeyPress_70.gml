
if hasbow == true && attack == false {
   
        switch(direction){
            case 90:
                instance_create_layer(x,y-grd,"arrows",obj_arrow);
                sprite_index = spr_link_attack_up;
                image_speed = 0;
            break;
            case 270:
                instance_create_layer(x,y+grd,"arrows",obj_arrow);
                sprite_index = spr_link_attack_down;
                image_speed = 0;
				
            break;
            case 180:
                instance_create_layer(x-grd,y,"arrows",obj_arrow);
                sprite_index = spr_link_attack_left;
                image_speed = 0;
				
            break;
            case 0:
                instance_create_layer(x+grd,y,"arrows",obj_arrow);
                sprite_index = spr_link_attack_right;
                image_speed = 0;
				
            break;
		}
}