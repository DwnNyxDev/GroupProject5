// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function get_sprite_from_card_name(card_name,sprite_type){
	if(sprite_type=="card"){
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
		else if(card_name="Skeleton Mid Knight"){
			return spr_skeleton_midKnightCard
		}
	}
	else if(sprite_type=="soldier"){
		if(card_name="Human High Knight"){
			return spr_highKnight_idle_forward
		}
		else if(card_name="Human Mid Knight"){
			return spr_lowKnightIdle
		}
		else if(card_name="Skeleton Mid Knight"){
			return spr_skellyKnight_idle_forward
		}
	}
}