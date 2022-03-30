/// @description Insert description here
// You can write your code in this editor
if(date_second_span(reset,date_current_datetime())>=20){
	cards_bought3=0;
	card_name = choose("Human Mid Knight","Human High Knight","Skeleton Mid Knight");
	sprite_index = get_sprite_from_card_name(card_name,"card")
	if(card_name = "Human Mid Knight"||card_name="Skeleton Mid Knight"){
		price = 1000;
	}
	else if(card_name = "Human High Knight"){
		price = 1500;
	}
	ini_open("saveData.ini");
	ini_write_real("Variables","reset",date_current_datetime());
	ini_write_real("Variables", "cards_bought3", cards_bought3);
	ini_write_string("Variables","display_3",card_name);
	ini_close();
}
