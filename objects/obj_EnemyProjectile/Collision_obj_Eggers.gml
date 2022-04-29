if (obj_GameController.foundEggars)
{
	with (other)
	{
		if (variable_instance_exists(id,"hp"))
		{
			hp -= obj_GameController.enemyBulletDamage;
			flash = 3;
		}
	}
	instance_destroy();
}
