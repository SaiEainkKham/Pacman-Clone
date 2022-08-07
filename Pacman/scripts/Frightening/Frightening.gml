/// @desc	Moving random direction
/// @arg	movespeed


function Frightening(_movespeed)
{
	var choices = [];
	var number_of_choice = 0;

	// right
	if (direction != 180)
	{
		if (!place_meeting(x+_movespeed, y, obj_wall))
		{
			choices[number_of_choice] = 0;
			number_of_choice++;
		}
	}

	// up
	if (direction != 270)
	{
		if (!place_meeting(x, y-_movespeed, obj_wall))
		{
			choices[number_of_choice] = 90;
			number_of_choice++;
		}
	}

	// left
	if (direction != 0)
	{
		if (!place_meeting(x-_movespeed, y, obj_wall))
		{
			choices[number_of_choice] = 180;
			number_of_choice++;
		}
	}

	// down
	if (direction != 90)
	{
		if (!place_meeting(x, y+_movespeed, obj_wall))
		{
			choices[number_of_choice] = 270;
			number_of_choice++;
		}
	}
	
	// if not stuck, move random
	if (array_length(choices) > 0)
	{
		direction = choices[irandom(number_of_choice - 1)];
	}

	move_contact_solid(direction,_movespeed);

	// Wrap
	move_wrap(true, false, sprite_width/2);

}