/// @desc	Setting for Text in one place
/// @arg	halign
/// @arg	valign
/// @arg	color
/// @arg	font

function DrawSetText(_halign, _valign, _color, _font)
{
	draw_set_halign(_halign);
	draw_set_valign(_valign);
	draw_set_color(_color);
	draw_set_font(_font);
}