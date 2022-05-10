
#region Hover Code
if (point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), 
   value_x, value_y, value_x + widthButton, value_y + heightButton))
{
    
	if (!doOnce)
	{
		
		//Insert Do Once Code
		
		doOnce = true;
	}
	
}

else 
{
	doOnce = false;
}
#endregion

#region Click Code
if (mouse_check_button_pressed(mb_left))
{
	if (position_meeting(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), id))
	{
		//Insert Click Code

	}
	
}
#endregion




