if (instance_exists(obj_pacman) && (global.startGame))
{
	
switch (state)
{	
	case ghostState.frightening:
		//
		if (frightenCount > 0)
		{
			sprite_index = spr_blueGhost;
			Frightening(global.ghostFrightspeed);
			frightenCount--;
			if (frightenCount < room_speed*2)
			{
				flash = true;
			}
		}
		else
		{
			flash = false;
			frightenCount = frightenTime;
			direction += 180;
			state = ghostState.idle;
		}
		
	break;
		
	case ghostState.idle:
		//
		if (idleTime > 0)
		{
			GhostIdle(image);
			idleTime--;
		}
		else
		{
			state = ghostState.come_out;
		}
			
	break;
	
	case ghostState.come_out:
		//
		GhostComeOut(obj_inky);
	break;
}
	
}


switch (state)
{
	case 0:	text = "state.scatter";		break;
	case 1:	text = "state.chase";		break;
	case 2:	text = "state.frightening";	break;
	case 3:	text = "state.eaten";		break;
	case 4:	text = "state.idle";		break;
	case 5:	text = "state.come_out";	break;
}


