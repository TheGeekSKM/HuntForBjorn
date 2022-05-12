with (other)
{
	audio_play_sound(aud_Hurt, 20, false);
	if (variable_instance_exists(id, "hp"))
	{
		hp -= other.damageValue;
	}
}
instance_destroy();
