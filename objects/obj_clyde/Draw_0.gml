draw_self();

DrawSetText(fa_center, fa_top, c_white, fnt_game);

draw_text(x,y-30,text);

// Create white flash when frighten duration is low
if (flash)
{
	if (flashCount > 0)
	{
		shader_set(sh_white);
		draw_self();
		shader_reset();
	}
	else
	{
		draw_self();
		if (flashCount < -flashTimer) flashCount = flashTimer;
	}
	flashCount--;
}

if (global.target_drawing)
{
	draw_set_font(fnt_gameB);
	draw_set_color(c_orange);
	draw_text(dx,dy,"x");
	if (instance_exists(obj_pacman)) draw_circle(obj_pacman.x, obj_pacman.y, (global.grid * 5), true);
}
