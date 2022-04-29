if (window_get_fullscreen())
{
	window_mouse_set(clamp(window_mouse_get_x(),0,window_get_width()),clamp(window_mouse_get_y(),0,window_get_height()))
}

if (keyboard_check_pressed(ord("D")))
{
	if (debug == 0) { debug = 1; }
	if (debug == 1) { debug = 0; }
}

if (keyboard_check_pressed(ord("R")))
{
	game_restart();
}

if (researchPaperItems >= requiredResearchPaper)
{
	foundAllResearchPapers = true;
}

if (foundEggars)
{
	if (!doOnce)
	{
		#region Spawn
		for (var _x = 64; _x < room_width; _x += 32)
		{
			for (var _y = 64; _y < room_height; _y += 32)
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
			}
		}
		#endregion
	}
	doOnce = true;
}

if (foundAllResearchPapers) && (foundEggars)
{
	room_goto(rm_WinScreen);
}
