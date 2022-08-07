
// State Machine for Ghost
enum ghostState
{
	scatter,
	chase,
	frightening,
	eaten,
	idle,
	come_out
}

// Declaring global variable
global.grid = 32;
global.target_drawing = false;
global.startGame = false;

// Movement speed
global.ghostMovespeed = 2;
global.ghostFrightspeed = 1;
global.ghostEatenspeed = 8;


