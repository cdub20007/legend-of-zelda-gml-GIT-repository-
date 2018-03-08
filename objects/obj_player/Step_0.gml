// movement
gamepad(0);

if attack == false 
{
	switch (keyboard_key)    // sets keys for movement 
	{
	case ord("W"):
		motion_set(90,spd);
		sprite_index = spr_link_walk_up;
		image_speed = 1;
		


	break;
	case ord("S"):
		motion_set(270,spd);
		sprite_index = spr_link_walk_down;
		image_speed = 1;
		


	break;
	case ord("A"):
		motion_set(180,spd);
		sprite_index = spr_link_walk_left;
		image_speed = 1;
		;

	break;
	case ord("D"):
		motion_set(0,spd);
		sprite_index = spr_link_walk_right;
		image_speed = 1;
		

	break;
	}

if !keyboard_check(ord("W"))
and !keyboard_check(ord("S"))
and !keyboard_check(ord("A"))
and !keyboard_check(ord("D"))
or attack = true {
    motion_set(direction,0);
    image_speed = 0;
    image_index = 0;
	}
}

// attacking 

if attack = false {
    if keyboard_check_pressed(vk_space){
        switch(direction){
            case 90:
                instance_create_layer(x,y-grd,"sword",obj_sword);
                sprite_index = spr_link_attack_up;
                image_speed = 0;
            break;
            case 270:
                instance_create_layer(x,y+grd,"sword",obj_sword);
                sprite_index = spr_link_attack_down;
                image_speed = 0;
            break;
            case 180:
                instance_create_layer(x-grd,y,"sword",obj_sword);
                sprite_index = spr_link_attack_left;
                image_speed = 0;
            break;
            case 0:
                instance_create_layer(x+grd,y,"sword",obj_sword);
                sprite_index = spr_link_attack_right;
                image_speed = 0;
            break;
        }
        attack = true;
        alarm[0] = 10;
    }
}


// slide transition 
if obj_player.x > view_x + __view_get( e__VW.WView, 0 ) view_x += __view_get( e__VW.WView, 0 ); // Right
if obj_player.x < view_x view_x -= __view_get( e__VW.WView, 0 ); // Left
if obj_player.y > view_y + __view_get( e__VW.HView, 0 ) view_y += __view_get( e__VW.HView, 0 ); // Down
if obj_player.y < view_y view_y -= __view_get( e__VW.HView, 0 ); // Up

if view_x1 < view_x view_x1 = min(view_x,view_x1 + view_xspeed);
if view_x1 > view_x view_x1 = max(view_x,view_x1 - view_xspeed);
if view_y1 < view_y view_y1 = min(view_y,view_y1 + view_yspeed);
if view_y1 > view_y view_y1 = max(view_y,view_y1 - view_yspeed);

__view_set( e__VW.XView, 0, view_x1 );
__view_set( e__VW.YView, 0, view_y1 );

if playerhp == 0
{
room_restart();
audio_stop_all();
}



