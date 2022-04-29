if (hp <= 0)
{
	room_goto(rm_PEDeathScreen)
	instance_destroy();
}


#region Search for Player

if (distance_to_object(obj_Player) < followDis)
{
	obj_GameController.foundEggars = true;
	
	if (distance_to_object(obj_BasicEnemy) < shootDis)
	{
		currentState = enemyState.fire;
	}
	else
	{
		currentState = enemyState.chase;
	}
	
}
else
{
	if (distance_to_object(obj_BasicEnemy) < shootDis)
	{
		currentState = enemyState.fire;
	}
	else
	{
		currentState = enemyState.wander;
	}
}

#endregion

#region Wander

if (currentState == enemyState.wander)
{
    //if (wanderTimer == (timeChange * 60))
    //{
    //    direction = irandom_range(0, 359);
	//	speed = moveSpeed;
    //    wanderTimer = 0;
    //}
	//wanderTimer++;
	
	speed = 0;
    
}

#endregion

#region Chase

if (currentState == enemyState.chase && hp > 0)
{
	
	
	
	if (obj_GameController.useComplicatedBehavior)
	{
		var _foundPlayer = mp_grid_path(global.mp_grid, path, x, y, obj_Player.x, obj_Player.y, true);
		if (_foundPlayer)
		{
			path_start(path, moveSpeed, path_action_stop, false);
		}
	}
	else
	{
		move_towards_point(obj_Player.x, obj_Player.y, speed);
	}
}

#endregion

#region Firing

if (currentState == enemyState.fire) && (canFire)
{
	speed = 0;
	pd = point_direction(x, y, instance_nearest(x, y, obj_BasicEnemy).x, instance_nearest(x, y, obj_BasicEnemy).y);
    dd = angle_difference(image_angle, pd);
	image_angle -= min(abs(dd), 10) * sign(dd);
	
	firingDelay = firingDelay - 1;
	if (firingDelay < 0) 
	{
		firingDelay = 5;
		with (instance_create_layer(x, y, "NPCBullets", obj_NPCProjectile))
		{
			speed = 5;
			direction = other.image_angle + random_range(-5, 5);
			image_angle = direction;
		}
	}
}

#endregion

if (place_meeting(x + hspeed, y, obj_Wall))
 {
 	hspeed = 0;


 }
 if (place_meeting(x, y + vspeed, obj_Wall))
 {
 	vspeed = 0;
 }





