/// @description Insert description here
// You can write your code in this editor
price = 0;
cards_bought2 = 0;
ini_open("saveData.ini");
reset = ini_read_real("Variables","reset",0);
card_name = ini_read_string("Variables","display_2",noone);
cards_bought2 = ini_read_real("Variables","cards_bought2",0);
x=700;
y=room_height/2;
ini_close();
