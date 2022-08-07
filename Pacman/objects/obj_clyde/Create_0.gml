
dx = 0;
dy = 0;

image_speed = 1;

image[0] = spr_clydeR;
image[1] = spr_clydeT;
image[2] = spr_clydeL;
image[3] = spr_clydeB;

direction = 180;
state = ghostState.idle;

scatterTime = room_speed * 7;
scatterCount = scatterTime;

chaseTime = room_speed * 20;
chaseCount = chaseTime;
totalChase = 3;

frightenTime = room_speed * 8;
frightenCount = frightenTime;

idleTime = room_speed * 14;

text = "";
flash = false;
flashTimer = 10;
flashCount = flashTimer;


