if (objHealth <= 0)
{
	obj_GameController.enemyCount--;
	instance_destroy();
}


#region Search for Player

if (distance_to_object(instance_nearest(x, y, obj_PlayerHealth)) < alertDis)
{
	currentEnemyState = enemyState.chase;
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
		var _foundPlayer = mp_grid_path(global.mp_grid, path, x, y, 
			instance_nearest(x, y, obj_PlayerHealth).x, 
			instance_nearest(x, y, obj_PlayerHealth).y, 
			choose(0, 1));
			
		if (_foundPlayer)
		{
			path_start(path, moveSpeed, path_action_stop, false);
		}
	}
	else
	{
		move_towards_point(instance_nearest(x, y, obj_PlayerHealth).x, 
						   instance_nearest(x, y, obj_PlayerHealth).y, 
						   speed);
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





