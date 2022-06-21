

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


