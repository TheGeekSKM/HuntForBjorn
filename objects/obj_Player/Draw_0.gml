draw_self();

if (flash > 0)
{
	flash--;
	shader_set(sh_White);
	draw_self();
	shader_reset();
	
}
else
{
	draw_self();
}



