/// @description Insert description here
// You can write your code in this editor
price = 0;
cards_bought3 = 0;
ini_open("saveData.ini");
reset = ini_read_real("Variables","reset",0);
<<<<<<< Updated upstream
sprite_index = ini_read_real("Variables","display3",spr_goblin_sword);
=======
card_name = ini_read_string("Variables","display_3",noone);
sprite_index = get_sprite_from_card_name(card_name,"card");
>>>>>>> Stashed changes
x=1150;
y=room_height/2;
ini_close();

