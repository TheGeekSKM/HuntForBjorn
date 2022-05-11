
#region Hover Code
if (point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), 
   value_x, value_y, value_x + widthButton, value_y + heightButton))
{
    
	image_index = 1;
	
	if (!doOnce)
	{
		//audio_play_sound(aud_ButtonHover, 10, false);
		doOnce = true;
	}
	
}

else 
{
	image_index = 0;
	doOnce = false;
}
#endregion

#region Click Code
if (mouse_check_button_pressed(mb_left))
{
	if (position_meeting(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), id))
	{
		//One Time Code
        //audio_play_sound(aud_ButtonSelect, 10, false);
		
		//Insert Click Code
		
		room_goto_next();
	}
	
}
#endregion

