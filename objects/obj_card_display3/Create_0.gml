/// @description Insert description here
// You can write your code in this editor
price = 0;
cards_bought3 = 0;
ini_open("saveData.ini");
reset = ini_read_real("Variables","reset",0);
card_name = ini_read_string("Variables","display_3",noone);
x=1150;
y=room_height/2;
cards_bought3 = ini_read_real("Variables","cards_bought3",0);
ini_close();

