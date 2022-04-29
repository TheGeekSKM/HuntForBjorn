if (obj_GameController.foundAllResearchPapers)
{
	draw_text(x, y, "You found at least 10 research papers!");
}
else
{
	draw_text(x, y, "You need " + string(10 - obj_GameController.researchPaperItems) + " more research papers");
}

if (obj_GameController.foundEggars)
{
	draw_text(x, y + 14, "You found Professor Eggers!!");
}
else
{
	draw_text(x, y + 14, "You need to find Dr. Eggers")
}
