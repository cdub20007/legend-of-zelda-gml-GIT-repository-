// initialize variables. 
attack = false;
direction = 270;
image_speed = 0;
image_index = 0;
spd = 3;	// sets speed
grd = 8;	// sets grid variable
ani = 0.2;	//sets animation speed
playerhp = 6;
playermaxhp = 6;
hasbow = false;

///Sliding View

view_x = __view_get( e__VW.XView, 0 );
view_y = __view_get( e__VW.YView, 0 );
view_x1 = view_x;
view_y1 = view_y;
view_xspeed = sprite_width;
view_yspeed = view_xspeed div 2;



