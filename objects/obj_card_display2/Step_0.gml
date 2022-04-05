/// @description Insert description here
// You can write your code in this editor
if(date_second_span(reset,date_current_datetime())>=10){
	cards_bought2=0;
	card_name = choose("Human Mid Knight","Human High Knight","Skeleton Mid Knight", "Mutant Zombie", "Zombie", "Rogue Zombie");
	sprite_index = get_sprite_from_card_name(card_name,"card")
	if(card_name = "Human Mid Knight"||card_name="Skeleton Mid Knight"){
		price = 1000;
	}
	else if(card_name = "Human High Knight"){
		price = 1500;
	}
	else if(card_name = "Zombie" || card_name  = "Mutant Zombie"){
		price = 2000;
	}
	else if(card_name = "Rogue Zombie"){
		price = 2500;
	}
	reset = date_current_datetime();
	ini_open("saveData.ini");
	ini_write_real("Variables","reset",date_current_datetime());
	ini_write_real("Variables", "cards_bought2", cards_bought2);
	ini_write_string("Variables","display_2",card_name);
	ini_close();
}
