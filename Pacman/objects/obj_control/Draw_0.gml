
// Draw Text
if (victory)
{
	DrawSetText(fa_middle, fa_center, c_white, fnt_game);
	draw_text(room_width/2, 32, "Congratulation! You Win!");
	draw_text(room_width/2, 64, "Press any key to restart");
}
else
{
	DrawSetText(fa_left, fa_center, c_white, fnt_game);
	draw_text(32,32,"Fruit Left:");
	draw_text(32,64,count);
}

DrawSetText(fa_right, fa_center, c_white, fnt_game);
draw_text(room_width - 32, 32, "Press F2 to toggle ghost target point");
draw_text(room_width - 32, 64, "Press F11 to toggle fullscreen");
