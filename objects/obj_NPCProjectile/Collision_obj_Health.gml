with (other)
{
	if (variable_instance_exists(id,"objHealth"))
	{
		objHealth -= obj_GameController.bulletDamage;
		flash = 3;
	}
}
instance_destroy();
