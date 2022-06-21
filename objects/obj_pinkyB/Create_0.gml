
dx = 0;
dy = 0;

image_speed = 1;

image[0] = spr_pinkyR;
image[1] = spr_pinkyT;
image[2] = spr_pinkyL;
image[3] = spr_pinkyB;

//direction = 180;
state = ghostState.idle;

frightenTime = room_speed * 8;
frightenCount = frightenTime;

idleTime = room_speed * 3;

text = "";
flash = false;
flashTimer = 10;
flashCount = flashTimer;


