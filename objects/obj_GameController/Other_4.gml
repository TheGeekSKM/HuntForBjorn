#macro TS	16



if (useComplicatedBehavior)
{
	var _width = ceil(room_width / TS);
	var _height = ceil(room_height / TS);

	global.mp_grid = mp_grid_create(0, 0, _width, _height, TS, TS);

	mp_grid_add_instances(global.mp_grid, obj_Wall, false);
}
