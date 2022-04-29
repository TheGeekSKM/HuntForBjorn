
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

draw_set_halign(fa_middle);
draw_set_valign(fa_center);

draw_text(x, y - 12, "Professor Eggers");

draw_set_halign(fa_left);
draw_set_valign(fa_top);

//debug
//
if (obj_GameController.debug == 1)
{
	draw_circle_color(x, y, alertDis, c_red, c_red, true);
}

//draw_rectangle_color(bbox_left, bbox_top, bbox_right, bbox_bottom, c_yellow, c_yellow, c_yellow, c_yellow, true);

