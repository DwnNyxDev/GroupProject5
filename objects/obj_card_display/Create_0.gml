/// @description Insert description here
// You can write your code in this editor
price = 0;
cards_bought = 0;
ini_open("saveData.ini");
reset = ini_read_real("Variables","reset",0);
sprite_index = ini_read_real("Variables","display",spr_babybowman);
x=250;
y=room_height/2;
ini_close();
