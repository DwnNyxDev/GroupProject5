/// @description Insert description here
// You can write your code in this editor
price = 0;
cards_bought3 = 0;
ini_open("saveData.ini");
reset = ini_read_real("Variables","reset",0);
sprite_index = ini_read_real("Variables","display3",spr_goblin_sword);
x=1150;
y=room_height/2;
ini_close();

