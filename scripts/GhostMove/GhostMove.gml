/// @desc	Move to point(dx,dy)
/// @arg	dx
/// @arg	dy
/// @arg	movespeed
/// @arg	sprit_array


function GhostMove(_dx, _dy, _movespeed, _sprit_array)
{
	var new_direction = -1;
	var travel = 9999;

	// right
	if (direction != 180)
	{
		if (!place_meeting(x+_movespeed, y, obj_wall))
		{
			var dist = point_distance(x+global.grid, y, _dx, _dy);
			if (dist < travel)
			{
				new_direction = 0;
				travel = dist;
			}
		}
	}

	// up
	if (direction != 270)
	{
		if (!place_meeting(x, y-_movespeed, obj_wall))
		{
			var dist = point_distance(x, y-global.grid, _dx, _dy);
			if (dist < travel)
			{
				new_direction = 90;
				travel = dist;
			}
		}
	}

	// left
	if (direction != 0)
	{
		if (!place_meeting(x-_movespeed ,y, obj_wall))
		{
			var dist = point_distance(x-global.grid, y, _dx, _dy);
			if (dist < travel)
			{
				new_direction = 180;
				travel = dist;
			}
		}
	}

	// down
	if (direction != 90)
	{
		if (!place_meeting(x, y+_movespeed, obj_wall))
		{
			var dist = point_distance(x, y+global.grid, _dx, _dy);
			if (dist < travel)
			{
				new_direction = 270;
				travel = dist;
			}
		}
	}

	if (new_direction != -1)
	{
		direction = new_direction;
		sprite_index = _sprit_array[direction/90];
	}



	move_contact_solid(direction,_movespeed);

	// Wrap
	move_wrap(true, false, sprite_width/2);
}