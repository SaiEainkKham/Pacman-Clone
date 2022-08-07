
dx = 0;
dy = 0;

image_speed = 1;

image[0] = spr_blinkyR;
image[1] = spr_blinkyT;
image[2] = spr_blinkyL;
image[3] = spr_blinkyB;

direction = 180;
sprite_index = image[2];
state = ghostState.scatter;

scatterTime = room_speed * 7;
scatterCount = scatterTime;

chaseTime = room_speed * 20;
chaseCount = chaseTime;
totalChase = 3;

frightenTime = room_speed * 8;
frightenCount = frightenTime;

text = "";
flash = false;
flashTimer = 10;
flashCount = flashTimer;



