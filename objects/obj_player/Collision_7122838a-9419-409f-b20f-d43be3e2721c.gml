/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2D9D3F40
/// @DnDArgument : "code" "if !place_meeting(x, y - 1, obj_wall)$(13_10)   {$(13_10)   move_contact_solid(direction, - 1);$(13_10)   }"
if !place_meeting(x, y - 1, obj_wall)
   {
   move_contact_solid(direction, - 1);
   }