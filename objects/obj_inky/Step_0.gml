if (instance_exists(obj_pacman) && (global.startGame))
{
	
switch (state)
{
	case ghostState.scatter:
		//
		dx = obj_botR.x;
		dy = obj_botR.y;
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
			// Target = two tiles infront of pacman relation to blinky
			with (obj_pacman)
			{
				switch (direction)
				{
					case 0:	
						other.xx = obj_pacman.x + (global.grid *2);
						other.yy = obj_pacman.y;
					break;
		
					case 90:	
						other.xx = obj_pacman.x - (global.grid *2);
						other.yy = obj_pacman.y - (global.grid *2);
					break;
		
					case 180:	
						other.xx = obj_pacman.x - (global.grid *2);
						other.yy = obj_pacman.y;
					break;
		
					case 270:	
						other.xx = obj_pacman.x;
						other.yy = obj_pacman.y + (global.grid *2);
					break;
				}
			}

			dist = point_distance(xx, yy, obj_blinky.x, obj_blinky.y);
			dirs = point_direction(obj_blinky.x, obj_blinky.y, xx, yy);

			dx = xx + lengthdir_x(dist, dirs);
			dy = yy + lengthdir_y(dist, dirs);
			
			
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
		flash = false;
		if (!place_meeting(x, y, obj_center))
		{
			GhostEaten();
		}
		else
		{
			state = ghostState.scatter;
		}
		
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


