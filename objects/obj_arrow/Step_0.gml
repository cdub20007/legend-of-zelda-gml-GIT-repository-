hit = instance_place(x,y,obj_enemy)

if ( hit != noone)
{
hit.hp --;
instance_destroy();
}
