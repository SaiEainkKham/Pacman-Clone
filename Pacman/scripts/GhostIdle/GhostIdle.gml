/// @desc	Moving back and forth at ghost house
/// @arg	sprite_array


function GhostIdle(_sprite_array)
{
	
	if (place_meeting(x + global.ghostMovespeed, y, obj_wall))
	{
		direction = 180;
		sprite_index = _sprite_array[2];
	}
	
	if (place_meeting(x - global.ghostMovespeed, y, obj_wall))
	{
		direction = 0;
		sprite_index = _sprite_array[0];
	}
		
	
	
	move_contact_solid(direction, global.ghostMovespeed);
}