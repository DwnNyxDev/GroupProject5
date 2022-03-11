/// @description Insert description here
// You can write your code in this editor
display2 = spr_babyspear;
if(date_second_span(reset,date_current_datetime())>=20){
	display2 = choose(spr_midKnightCard, spr_skeleton_card_back, spr_humanWizardCard);
	if(display2 = spr_midKnightCard){
		price = 1000;
	}
	else if(display2 = spr_skeleton_card_back){
		price = 1500;
	}
	else if(display2 = spr_humanWizardCard){
		price = 2000;
	}
	ini_open("saveData.ini");
	ini_write_real("Variables","last_shop_reset",date_current_datetime());
	ini_write_real("Variables","display2",display2);
	ini_close();
}
