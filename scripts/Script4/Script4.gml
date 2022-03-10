// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function get_sprite_from_card_name(card_name){
	if(card_name="Human Archer"){
		return spr_archerCard;
	}
	else if(card_name="Human High Knight"){
		return spr_highKnightCard;
	}
	else if(card_name="Human Wizard"){
		return spr_humanWizardCard;
	}
	else if(card_name="Human Mid Knight"){
		return spr_midKnightCard
	}
}