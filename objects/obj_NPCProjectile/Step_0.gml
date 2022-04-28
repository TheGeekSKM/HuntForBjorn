if (x > (room_width + 30)) 
	|| (y > (room_height + 30))
	|| (x < (0 - 30))
	|| (y < (0 - 30))
{
	instance_destroy();
}
