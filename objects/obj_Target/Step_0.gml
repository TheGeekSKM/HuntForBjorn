var beingHovered = obj_GameController.hovering;
var shootStateVariable = obj_GameController.shootState;

if (mouse_check_button(mb_left) && !beingHovered && shootStateVariable == 0) 

{
	
	x = mouse_x;
	y = mouse_y;	
	
	image_xscale = 1.5;
	image_yscale = 1.5;
		
}
else
{
	image_xscale = 1;
	image_yscale = 1;
}
	
if (x > (room_width - (sprite_width / 2)))   {x = (room_width - (sprite_width / 2));}
if (x < (sprite_width / 2))					 {x = (sprite_width / 2);}
if (y > (room_height - (sprite_height / 2))) {y = (room_height - (sprite_height / 2));}
if (y < (sprite_height / 2))				 {y = (sprite_height / 2);}

if (shootStateVariable != 0 && instance_exists(obj_Player))
{
	x = obj_Player.x;
	y = obj_Player.y;
}

//Frank will get back to me