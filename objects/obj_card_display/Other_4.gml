/// @description Insert description here
// You can write your code in this editor
if(date_second_span(reset,date_current_datetime())>=20){
	display = choose(spr_archerCard, spr_scoutCard, spr_highKnightCard);
	if(display = spr_scoutCard){
		price = 500;
	}
	else if(display = spr_archerCard){
		price = 1000;
	}
	else if(display = spr_highKnightCard){
		price = 1500;
	}
	ini_open("saveData.ini");
	ini_write_real("Variables","reset",date_current_datetime());
	ini_write_real("Variables","display",display);
	ini_close();
}
