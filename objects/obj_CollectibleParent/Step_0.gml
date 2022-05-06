if (distance_to_object(obj_Player) < range)
    && (mouse_check_button_pressed(mb_right))
{
	event_user(0);
    instance_destroy();
}
