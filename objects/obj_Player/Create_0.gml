randomize();
#region Movement Variables

rundist = 32;

walkdist = 16;

slowdist = 4;

run = 4;

walk = 2;

slow = 1;

pd = 0;

dd = 0;

pdMouse = 0;

ddMouse = 0;

#endregion

targetObj = obj_Target;
wallObj = obj_Wall;

firingDelay = 0;

hp = 10;
flash = 0;

//Inventory



//Random Spawn



//if (enableRandomSpawn == 1)
//{
//	var _xSpawn = irandom_range(TS, room_width - TS);
//	var _ySpawn = irandom_range(TS, room_height - TS);

//	if (variable_instance_exists(obj_GameController, "arr_Walls"))
//	{
//		for (var index = array_length(obj_GameController.arr_Walls) - 1; 
//		index >= 0; index--)
//		{
//			var _wall = obj_GameController.arr_Walls[index];
//			if (!point_in_rectangle(_xSpawn, _ySpawn, _wall.bbox_left, _wall.bbox_top, _wall.bbox_left, _wall.bbox_bottom))
//			{

//				array_delete(obj_GameController.arr_Walls, index, 1);
//				instance_destroy(_wall);
//				x = _xSpawn;
//				y = _ySpawn;
//			}
//		}
//	}
//}

x = irandom_range(16, room_width - 16);
y = irandom_range(0, 32);





