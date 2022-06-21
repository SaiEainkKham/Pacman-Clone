
dx = 0;
dy = 0;

image_speed = 1;

image[0] = spr_InkyR;
image[1] = spr_InkyT;
image[2] = spr_InkyL;
image[3] = spr_InkyB;

//direction = 180;
state = ghostState.idle;

frightenTime = room_speed * 8;
frightenCount = frightenTime;

idleTime = room_speed * 7;

text = "";
flash = false;
flashTimer = 10;
flashCount = flashTimer;


