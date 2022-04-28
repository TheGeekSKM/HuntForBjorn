//Switch Button Code
enum shootMode

{
    move,
    shoot
}

shootState = shootMode.move;

//GUI Code
hovering = false;
debug = 0;

//Player Stats
bulletDamage = 1;


//Enemy Code
enum enemyState
{
    wander,
    chase,
	fire
}
enemyBulletDamage = 1;

//Global Variables
global.mp_grid = 0;

//Random Generation Code
wallSpawnPercentage = 3;
enemySpawnPercentage = 2;
rangedEnemySpawnPercentage = 2;
treeSpawnPercentage = 20;

arr_Walls[0] = noone;
arr_Enemies[0] = noone;
arr_Trees[0] = noone;

wallCount = 0;
enemyCount = 0;
treeCount = 0;

wallsArrayIndex = 0;
enemyArrayIndex = 0;
treeArrayIndex = 0;

useComplicatedBehavior = true;

#region Random Room Generation

for (var _x = 32; _x < room_width; _x += 16)
{
	for (var _y = 32; _y < room_height; _y += 16)
	{
		var _spawnDecision = irandom_range(1, 5);
		
		if (_spawnDecision == 1)
		{
			#region Basic Enemy Spawn
			var _decision = irandom_range(1, 100)
			
			if (_decision < enemySpawnPercentage)
			{
				arr_Enemies[enemyArrayIndex] = instance_create_layer(_x, _y, "Enemies", obj_BasicEnemy);
				enemyArrayIndex++;
				enemyCount++;
			}
			
			#endregion
		}
		else if (_spawnDecision == 2)
		{
			#region Ranged Enemy
			var _decision = irandom_range(1, 100)
			
			if (_decision < rangedEnemySpawnPercentage)
			{
				arr_Enemies[enemyArrayIndex] = instance_create_layer(_x, _y, "Enemies", obj_RangedEnemy);
				enemyArrayIndex++;
				enemyCount++;
			}
			#endregion
		}
		else
		{
			#region Wall Spawn
			var _decision = irandom_range(1, 100);
		
			if (_decision < wallSpawnPercentage)
			{
				arr_Walls[wallsArrayIndex] = instance_create_layer(_x, _y, "Walls", obj_Wall);
				wallsArrayIndex++;
				wallCount++;
			}
			#endregion
		}
	}
}

for (var _x = 128; _x < room_width; _x += 64)
{
	for (var _y = 128; _y < room_height; _y += 64)
	{
		#region Tree Spawn
			
		var _decision = irandom_range(1, 100)
			
		if (_decision < treeSpawnPercentage)
		{
			arr_Trees[treeArrayIndex] = instance_create_layer(_x, _y, "Trees", obj_Tree);
			treeArrayIndex++;
			treeCount++;
		}
		
		#endregion
		
	}
}
show_debug_message("Number of Walls: " + string(array_length(arr_Walls)));
show_debug_message("Number of Enemies: " + string(array_length(arr_Enemies)));

#endregion
