if (objHealth <= 0)
{
	obj_GameController.enemyCount--;
	instance_destroy();
}


#region Search for Player

if (distance_to_object(obj_Player) < alertDis)
{
	if (distance_to_object(obj_Player) < shootDis)
	{
		currentEnemyState = enemyState.fire;
	}
	else
	{
		currentEnemyState = enemyState.chase;
	}
	
}
else
{
	currentEnemyState = enemyState.wander;
}

#endregion

#region Wander

if (currentEnemyState == enemyState.wander)
{
    if (wanderTimer == (timeChange * 60))
    {
        direction = irandom_range(0, 359);
		speed = moveSpeed;
        wanderTimer = 0;
    }
	wanderTimer++;
    
}

#endregion

#region Chase

if (currentEnemyState == enemyState.chase && objHealth > 0)
{
	
	
	
	if (obj_GameController.useComplicatedBehavior)
	{
		var _foundPlayer = mp_grid_path(global.mp_grid, path, x, y, obj_Player.x, obj_Player.y, choose(0, 1));
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

if (currentEnemyState == enemyState.fire)
{
	speed = 0;
	pd = point_direction(x, y, obj_Player.x, obj_Player.y);
    dd = angle_difference(image_angle, pd);
	image_angle -= min(abs(dd), 10) * sign(dd);
	
	firingDelay = firingDelay - 1;
	if (firingDelay < 0) 
	{
		firingDelay = 10;
		with (instance_create_layer(x, y, "EnemyBullets", obj_EnemyProjectile))
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





