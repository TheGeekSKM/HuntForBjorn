


event_inherited();

#region Search for Player

if (distance_to_object(obj_Player) < alertDis)
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
        wanderTimer = 0;
    }
	wanderTimer++;
    
}

#endregion

#region Chase

if (currentEnemyState == enemyState.chase)
{
	move_towards_point(obj_Player.x, obj_Player.y, speed);
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





