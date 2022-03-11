/// @description Insert description here
// You can write your code in this editor
display3 = spr_goblin_sword;
if(date_second_span(reset,date_current_datetime())>=20){
	display3 = choose(spr_zombie_card_back, spr_skeletonKnightCard_test, spr_beast_card_back);
	if(display3 = spr_zombie_card_back){
		price = 1500;
	}
	else if(display3 = spr_skeletonKnightCard_test){
		price = 2000;
	}
	else if(display3 = spr_beast_card_back){
		price = 2500;
	}
	ini_open("saveData.ini");
	ini_write_real("Variables","last_shop_reset",date_current_datetime());
	ini_write_real("Variables","display3",display3);
	ini_close();
}
