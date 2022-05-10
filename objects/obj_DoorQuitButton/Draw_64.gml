draw_self();

if (hovering)
{
	draw_text(device_mouse_x_to_gui(0) + 25,
			  device_mouse_y_to_gui(0) - 6,
			  "Quit Game");
}
