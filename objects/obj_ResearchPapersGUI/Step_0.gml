#region Hover Code
if (point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), 
   value_x, value_y, value_x + widthButton, value_y + heightButton))
{
    show_debug_message("hovering");
	with (obj_GameController)
	{
	    hovering = true;
	}
	
}

else 
{
    with (obj_GameController) { hovering = false; }
}
#endregion
