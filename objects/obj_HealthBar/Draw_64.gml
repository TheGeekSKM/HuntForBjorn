draw_sprite(spr_HealthBarBorderBlack, 0, healthbar_x, healthbar_y);

draw_sprite_stretched(spr_HealthBar, 0, healthbar_x, healthbar_y, 
	min(((obj_Player.hp / 50) * healthbar_width), healthbar_width),
	healthbar_height);
	
draw_sprite(spr_HealthBarBorder, 0, healthbar_x, healthbar_y);
