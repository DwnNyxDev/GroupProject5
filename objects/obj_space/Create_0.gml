left = instance_nearest(x-100,y,obj_space);
up = instance_nearest(x,y-70,obj_space);
right = instance_nearest(x+100,y,obj_space);
down = instance_nearest(x,y+70,obj_space);
upLeft = instance_nearest(x-100,y-70,obj_space);
upRight = instance_nearest(x+100,y-70,obj_space);
downLeft = instance_nearest(x-100,y+70,obj_space);
downRight = instance_nearest(x+100,y+70,obj_space);

global.phase = 0;
occupying = false;
currentTroop = noone;
enemyOccupying = false;
currentTroop1 = noone;
currentTroop2 = noone;
currentTroop3 = noone;
currentTroop4 = noone;
currentTroop5 = noone;

