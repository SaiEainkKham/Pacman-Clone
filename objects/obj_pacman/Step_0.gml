
if (global.startGame)
{
	// Get Player Input
	keyleft		= keyboard_check(ord("A")) || keyboard_check(vk_left);
	keyright	= keyboard_check(ord("D")) || keyboard_check(vk_right);
	keyup		= keyboard_check(ord("W")) || keyboard_check(vk_up);
	keydown		= keyboard_check(ord("S")) || keyboard_check(vk_down);


	hsp = (keyright - keyleft) * movespeed;
	vsp = (keydown - keyup) * movespeed;

	// Horizontal collision and movement
	if (hsp != 0)
	{
		if (!place_meeting(x+hsp,y,obj_wall))
		{
			direction = 270 + (sign(hsp) * 90);
			image_angle = direction;
		}
	}
	
	// Vertical collision and movement
	if (vsp != 0)
	{
		if (!place_meeting(x,y+vsp,obj_wall))
		{
			direction = 180 + (sign(vsp) * 90);
			image_angle = direction;
		}
	}

	// Start Moving
	if (start) 
	{
		move_contact_solid(direction,movespeed);
		image_speed = 1;
	}
	else if (hsp != 0 || vsp != 0)
	{
		start = true;
	}

	// Wrap
	move_wrap(true, false, sprite_width/2);
	
}

//show_debug_message("hsp = " + string(hsp) + "  " + "vsp = " + string(vsp) + "  " + "direction = " + string(direction));
//show_debug_message(global.startGame);


