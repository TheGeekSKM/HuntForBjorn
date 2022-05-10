
#region Hover Code
if (point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), 
   value_x, value_y, value_x + widthButton, value_y + heightButton))
{
    
	if (!doOnce)
	{
		
		//Insert Do Once Code
		sprite_index = spr_PlayPaperButton_Selected;
		hovering = true;
		doOnce = true;
	}
	
}

else 
{
	doOnce = false;
	hovering = false;
	sprite_index = spr_PlayPaperButton;
}
#endregion

#region Click Code
if (mouse_check_button_pressed(mb_left))
{
	if (position_meeting(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), id))
	{
		//Insert Click Code
		room_goto_next();
	}
	
}
#endregion




