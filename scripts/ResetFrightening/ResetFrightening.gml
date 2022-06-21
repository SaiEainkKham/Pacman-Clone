// To reset Ghost Frighten Duration when Pacman eat another powerup
// during frightening state


function ResetFrightening()
{
	with (obj_ghost)
	{
		frightenCount = frightenTime;
		flash = false;
	}
}