
if (distance_to_object(obj_Player) < range)
    && (mouse_check_button_pressed(mb_right))
{
    with(obj_GameController)
	{
		researchPaperItems += other.value;
	}
	instance_destroy();
}