if (obj_GameController.foundEggars)
{
	with (other)
	{
		audio_play_sound(aud_Hurt, 10, false);
		if (variable_instance_exists(id,"hp"))
		{
			hp -= obj_GameController.enemyBulletDamage;
			flash = 3;
		}
	}
	instance_destroy();
}
