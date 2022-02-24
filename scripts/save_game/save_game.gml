// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function save_game(){
	file_delete("saveData.ini");	
	ini_open("saveData.ini");
	ini_write_string("card_inventory","card_inventory",ds_list_write(global.card_inventory));
	for(deck_index=0; deck_index<ds_list_size(global.deck_list); deck_index++){
		temp_deck = ds_list_find_value(global.deck_list,deck_index);
		ini_write_string("decks",temp_deck.deck_name,ds_list_write(temp_deck));
	}
	ini_close();
}