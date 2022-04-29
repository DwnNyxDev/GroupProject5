global.phase = 0;
occupying = false;
currentTroop = noone;
enemyOccupying = false;
currentTroop1 = noone;
currentTroop2 = noone;
currentTroop3 = noone;
currentTroop4 = noone;
currentTroop5 = noone;
zone = false;
counted = false;
double = false;
single = false;
half = false;
randomm = false;
temp = false;
randVal = 0;
if(y == 376){
	zone = true;
}
if(x == 352){
	half = true;
}
else if(x == 520){
	single = true;
}
else if(x == 680){
	double = true;
}
else if(x == 848){
	randomm = true;
	randVal = random_range(0,5);
}
else{
	temp = true;
}
