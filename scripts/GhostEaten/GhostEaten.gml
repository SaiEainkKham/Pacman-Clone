/// @desc	Back to the center

function GhostEaten()
{
	var new_direction = -1;
	var travel = 9999;
	
	var _dx = obj_center.x;
	var _dy = obj_center.y;

	// right
	if (direction != 180)
	{
		if (!place_meeting(x + global.ghostEatenspeed, y, obj_wall))
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
		if (!place_meeting(x, y - global.ghostEatenspeed, obj_wall))
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
		if (!place_meeting(x - global.ghostEatenspeed ,y, obj_wall))
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
		if (!place_meeting(x, y + global.ghostEatenspeed, obj_wall))
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
	}


	move_contact_solid(direction, global.ghostEatenspeed);
	
	// Wrap
	move_wrap(true, false, sprite_width/2);
}