// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
<<<<<<< Updated upstream
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
	else if(card_name="Human Low Knight"){
		return spr_lowKnight_card
	}
	else if(card_name = "Mutant Zombie"){
		return spr_mutant_zombie_card
	}
	else if(card_name = "Zombie"){
		return spr_zombie_card
	}
	else if(card_name = "Rogue Zombie"){
		return spr_rogue_zombie_card
=======
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
		else if(card_name = "Mutant Zombie"){
			return spr_mutant_zombie_card
		}
		else if(card_name = "Zombie"){
			return spr_zombie_card
		}
		else if(card_name = "Rogue Zombie"){
			return spr_rogue_zombie_card
		}
		else if(card_name = "Goblin Sage"){
			return spr_goblin_shaman_card
		}
		else if(card_name = "Goblin Warrior"){
			return spr_goblin_warrior_card
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
>>>>>>> Stashed changes
	}
}