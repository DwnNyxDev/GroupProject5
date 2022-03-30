/// @description Insert description here
// You can write your code in this editor
price = 0;
cards_bought = 0;
ini_open("saveData.ini");
reset = ini_read_real("Variables","reset",0);
card_name = ini_read_string("Variables","display_1",noone);
x=250;
y=room_height/2;
cards_bought = ini_read_real("Variables","cards_bought",0);
ini_close();
