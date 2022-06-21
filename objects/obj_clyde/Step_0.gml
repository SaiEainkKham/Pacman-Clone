if (instance_exists(obj_pacman) && (global.startGame))
{
	
switch (state)
{
	case ghostState.scatter:
		//
		dx = obj_botL.x;
		dy = obj_botL.y;
		if ((scatterCount > 0) && (totalChase > 0))
		{
			GhostMove(dx, dy, global.ghostMovespeed, image);
			scatterCount--;
		}
		else
		{
			scatterCount = scatterTime;
			direction += 180;
			state = ghostState.chase;
		}
		
	break;
	
	case ghostState.chase:
		//
		if (chaseCount > 0)
		{
			
			// If in range of pacman, run away, if not, chase
			if (point_distance(x, y, obj_pacman.x, obj_pacman.y) > (global.grid * 5))
			{
				dx = obj_pacman.x;
				dy = obj_pacman.y;	
			}
			else
			{
				dx = obj_botL.x;
				dy = obj_botL.y;
			}
			
			GhostMove(dx, dy, global.ghostMovespeed, image);
			chaseCount--;
		}
		else
		{
			chaseCount = chaseTime;
			totalChase--;
			direction += 180;
			state = ghostState.scatter;
		}
		
	break;
	
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
			state = choose(ghostState.scatter, ghostState.chase);
		}
		
	break;
	
	case ghostState.eaten:
		//
		sprite_index = spr_eaten;
		dx = obj_center.x;
		dy = obj_center.y;
		if (!place_meeting(x, y, obj_center))
		{
			GhostEaten();
		}
		else
		{
			state = choose(ghostState.scatter, ghostState.chase);
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
		GhostComeOut();
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
