with (other)
{
	if (variable_instance_exists(id, "hp"))
	{
		hp -= other.damageValue;
	}
}
instance_destroy();
