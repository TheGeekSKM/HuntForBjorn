if (window_get_fullscreen())
{
	window_mouse_set(clamp(window_mouse_get_x(),0,window_get_width()),clamp(window_mouse_get_y(),0,window_get_height()))
}

if (keyboard_check_pressed(ord("D")))
{
	if (debug == 0) { debug = 1; }
	if (debug == 1) { debug = 0; }
}

if (keyboard_check_pressed(ord("R")))
{
	game_restart();
}

if (researchPaperItems >= requiredResearchPaper)
{
	foundAllResearchPapers = true;
}
