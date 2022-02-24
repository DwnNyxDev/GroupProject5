/// @description Insert description here
// You can write your code in this editor
clicked=true;
for(i=0; i<ds_list_size(obj_game.decks_created); i++){
	var temp_deck = ds_list_find_value(obj_game.decks_created,i);
	if(!temp_deck.clicked){
		instance_destroy(temp_deck);
	}
	keyboard_string="";
}