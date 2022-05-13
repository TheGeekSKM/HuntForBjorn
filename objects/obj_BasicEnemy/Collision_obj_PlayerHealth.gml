with (other)
{
	ScreenShake(3, 25);
	audio_play_sound(aud_Hurt, 25, false);
	if (variable_instance_exists(id, "hp"))
	{
		hp -= other.damageValue;
	}
}
instance_destroy();
