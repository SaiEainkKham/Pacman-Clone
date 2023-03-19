
// Press F5 to restart
if (keyboard_check(vk_f5))	game_restart();

// Get key input
keyup	= keyboard_check_pressed(ord("W")) || keyboard_check_pressed(vk_up); 
keydown	= keyboard_check_pressed(ord("S")) || keyboard_check_pressed(vk_down);
keyenter = keyboard_check_pressed(vk_enter) || keyboard_check_pressed(vk_space);

// Store number of option and current menu
op_length = array_length(option[menu_level]);

// Select the option
pos += keydown - keyup;
if (pos >= op_length) pos = 0;
if (pos < 0) pos = op_length - 1;

if (keyenter)
{
	var _menuLevel = menu_level;
	
	switch (menu_level)
	{
		// Main Menu
		case 0:
			switch (pos)
			{
				// Start Game
				case 0:	room_goto_next();	break;
				
				// Setting
				case 1:	menu_level = 1;		break;
				
				// Quit
				case 2:	game_end();			break;
			}
		break;
		
		// Setting
		case 1:
			switch (pos)
			{
				// Full Screen
				case 0:	FullScreen();		break;
											
				// Control setting for custom key binding
				case 1:						break;
											
				// Toggle Target			
				case 2:	global.target_drawing = !global.target_drawing		break;
				
				// Back to Main Menu
				case 3: menu_level = 0;	break;
			}
		break;
		
	}
	
	// Set back position
	if (_menuLevel != menu_level)	pos = 0;
	
	// Correct Option
	op_length = array_length(option[menu_level]);
}



