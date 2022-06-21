// Auto adjust menu box
var _new_w = 0;
for (var i = 0; i < op_length; i++)
{
	var	_op_w = string_width(option[menu_level, i]);
	_new_w = max(_op_w, _new_w);
}
width = _new_w + op_border*2;
height = string_height(option[0, 0]) + op_border*2 + (op_length-1)*op_space;


// Center Menu Box
x = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])*0.5 - width/2;
y = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0])*0.65 - height/2;

// Draw the box
draw_sprite_ext(spr_wall, 0, x, y, width/sprite_width, height/sprite_height, 0, c_white, 1);

// Draw the text
DrawSetText(fa_left, fa_top, c_white, fnt_menu);

for (var i = 0; i < op_length; i++)
{
	var _c = c_white;
	if (pos == i) _c = c_yellow;
	draw_text_color(x+op_border, y+op_border+(op_space*i), option[menu_level, i], _c, _c, _c, _c, 1);
}
