/// @desc	Come out and change instance
/// @arg	object id

function GhostComeOut(_obj)
{
	// Not ideal code but work
	var dx = obj_center.x;
	var dy = obj_center.y;
	
	if (x < dx)
	{
		x += global.ghostMovespeed;
	}
	else if (x > dx)
	{
		x -= global.ghostMovespeed;
	}
	else if (x == dx)
	{
		if (y != dy)
		{
			y -= global.ghostMovespeed;
		}
		else
		{
			// Change instance
			instance_destroy();
			with (instance_create_layer(x, y, layer, _obj))
			{
				// To check if pacman eaten powerup
				if (obj_ghost.state == ghostState.frightening)
				{
					state = ghostState.frightening;
				}
				else
				{
					state = ghostState.scatter;
				}
			}
		}
	}
	
	
}