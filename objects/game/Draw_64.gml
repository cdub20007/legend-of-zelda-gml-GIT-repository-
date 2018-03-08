
//position variables

var width = display_get_gui_width()
// xx = width - 26 * 10 we have 10 hearts per row each heart is 32 pixels wide and we want a space between each heart
//so width is the edge of the screen - 26 pixels * 10 this gives us the starting position for the first heart
var xx = width - 26 * 10
//32 pixels from the top of the screen
var yy = 32
//increment variables
// x increment for empty hearts we increment ix 26 pixels every repeat
var xEmpty = 0
// y increment for empty hearts we only increment iy when the hearts are == to 10 but we wont see its effect until we have more than 10 hearts
var yEmpty = 0
// same as above but for the full hearts of the hearts
var xFull = 0
var yFull = 0
var xHalf = 0
var yHalf = 0
//maxhp can't go lower than 3 and max hp can't go higher than 20
obj_player.playermaxhp = clamp(obj_player.playermaxhp, 6, 40)
//hearts cant go lower than 0 or higher then maxhp
obj_player.playerhp = clamp(obj_player.playerhp, 0, obj_player.playermaxhp)


//draw_text
draw_set_colour(c_white)
draw_text(width - 26 * 10 / 2, 0, "-Health-")
draw_set_halign(fa_center)
//draw hearts 
repeat(obj_player.playermaxhp/2)
{
	if xEmpty == 26 * 10
	{
		yEmpty = 26
		xEmpty = 0
	}
	draw_sprite(spr_empty_heart, 0, xx + xEmpty, yy + yEmpty)
	xEmpty += 26
}

repeat (obj_player.playerhp/2 + frac(obj_player.playerhp/2) * 2)
{
	if xHalf >= 26 * 10
	{
		yHalf = 26
		xHalf = 0
	}
	draw_sprite(spr_heart_half, 0, xx + xHalf, yy + yHalf)
	xHalf += 26
}

repeat (floor(obj_player.playerhp/2))
{
	if xFull >= 26 * 10
	{
		yFull = 26
		xFull = 0
	}
	draw_sprite(spr_full_heart, 0, xx + xFull, yy + yFull)
	xFull += 26
}


