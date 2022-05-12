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

doOnce = false;
doOnce2 = false;
doOnce3 = false;

bulletDamage = 3;
foundEggars = false;
requiredResearchPaper = 10;
foundAllResearchPapers = false;
researchPaperItems = 0;

//Enemy Code
enum enemyState
{
    wander,
    chase,
	fire
}
enemyBulletDamage = 3;

//Global Variables
global.mp_grid = 0;

//Random Generation Code
wallSpawnPercentage = 40;
enemySpawnPercentage = 3;
rangedEnemySpawnPercentage = 9;
treeSpawnPercentage = 5;
researchPaperSpawnPercentage = 7;

arr_Walls[0] = noone;
arr_Enemies[0] = noone;
arr_Trees[0] = noone;

wallCount = 0;
enemyCount = 0;
treeCount = 0;
researchPaperCount = 0;

wallsArrayIndex = 0;
enemyArrayIndex = 0;
treeArrayIndex = 0;

useComplicatedBehavior = true;

#region Random Room Generation

for (var _x = 128; _x < room_width - 128; _x += 32)
{
	for (var _y = 128; _y < room_height - 128; _y += 32)
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
		else if (_spawnDecision == 3)
		{
			#region Spawning Research Papers
			var _decision = irandom_range(1, 100)
			
			if (_decision < researchPaperSpawnPercentage)
			{
				instance_create_layer(_x, _y, "Collectibles", obj_ResearchPapers);
				researchPaperCount++;
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


#endregion

//Debug
show_debug_message("Found Eggers: " + string(foundEggars));
