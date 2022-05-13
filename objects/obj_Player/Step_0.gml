distanceToEggers = distance_to_object(obj_Eggers);

if (hp <= 0)
{
	room_goto(rm_DeathScreen);
}
if (hp > 50)
{
	hp = 50
}

//if (researchPapers >= obj_GameController.requiredResearchPaper)
//{
//	obj_GameController.foundAllResearchPapers = true;
//}


var shootMovement = obj_GameController.shootState;

#region Movement

if (shootMovement == 0)
{
	pd = point_direction(x, y, targetObj.x, targetObj.y);
    dd = angle_difference(image_angle, pd);
	image_angle -= min(abs(dd), 10) * sign(dd);
		
		
if (distance_to_point(targetObj.x,targetObj.y)>rundist)
	{
	move_towards_point(targetObj.x,targetObj.y,run);	
	}
else if (distance_to_point(targetObj.x,targetObj.y)>walkdist)
	{
	move_towards_point(targetObj.x,targetObj.y,walk);
	}
else if (distance_to_point(targetObj.x,targetObj.y)>=slowdist)
	{
	move_towards_point(targetObj.x,targetObj.y,slow);
	}
else 
	{
	speed = 0;
	}
			
//if (place_meeting(x + hspeed, y + vspeed, wallObj))
//{
//	speed = 0;		
//	targetObj.x = x;
//	targetObj.y = y;
//}

 if (place_meeting(x + hspeed, y, wallObj))
 {
 	hspeed = 0;


 }
 if (place_meeting(x, y + vspeed, wallObj))
 {
 	vspeed = 0;
 }



	
if (x > (room_width - (sprite_width / 2)))   {x = (room_width - (sprite_width / 2));}
if (x < (sprite_width / 2))					 {x = (sprite_width / 2);}
if (y > (room_height - (sprite_height / 2))) {y = (room_height - (sprite_height / 2));}
if (y < (sprite_height / 2))				 {y = (sprite_height / 2);}
}
else if (shootMovement == 1)
{
	speed = 0;
	pdMouse = point_direction(x, y, mouse_x, mouse_y);
    ddMouse = angle_difference(image_angle, pdMouse);
	image_angle -= min(abs(ddMouse), 10) * sign(ddMouse);

}

#endregion

#region Firing

firingDelay = firingDelay - 1;
if (mouse_check_button(mb_left)) 
	&& (firingDelay < 0) 
	&& (obj_GameController.shootState == shootMode.shoot)
	&& (!obj_GameController.hovering)
{
	firingDelay = 5;
	ScreenShake(1, 10);
	with (instance_create_layer(x, y, "Bullets", obj_Projectile))
	{
		audio_play_sound(aud_EnemyShoot, 20, false);
		speed = 5;
		direction = other.image_angle + random_range(-5, 5);
		image_angle = direction;
	}
}

#endregion





