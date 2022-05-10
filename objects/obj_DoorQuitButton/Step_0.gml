
#region Hover Code
if (point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), 
   value_x, value_y, value_x + widthButton, value_y + heightButton))
{
	sprite_index = spr_QuitDoorButton_Selected;
    
	if (!doOnce)
	{
		
		//Insert Do Once Code
		hovering = true;
		doOnce = true;
	}
	
}

else 
{
	
	hovering = false;
	doOnce = false;
	sprite_index = spr_QuitDoorButton;
}
#endregion

#region Click Code
if (mouse_check_button_pressed(mb_left))
{
	if (position_meeting(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), id))
	{
		//Insert Click Code
		game_end();
	}
	
}
#endregion




