
#region Hover Code
if (point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), 
   value_x, value_y, value_x + widthButton, value_y + heightButton))
{
	image_index = 1;
    
	if (!doOnce)
	{
		audio_play_sound(aud_ButtonHover, 20, false);
		//Insert Do Once Code
		hovering = true;
		doOnce = true;
	}
	
}

else 
{

	hovering = false;
	doOnce = false;
	image_index = 0;
}
#endregion

#region Click Code
if (mouse_check_button_pressed(mb_left))
{
	if (position_meeting(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), id))
	{
		//Insert Click Code
		audio_play_sound(aud_ButtonClick, 20, false);
		game_end();
	}
	
}
#endregion




