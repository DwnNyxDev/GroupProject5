// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function save_game(){
	file_delete("saveData.ini");	
	ini_open("saveData.ini");
	ini_write_string("Variables","player_name",global.player_name);
	ini_write_string("Variables","card_inventory",ds_list_write(global.card_inventory));
	ini_write_real("Variables","num_decks",ds_list_size(global.deck_list));
	for(i=0;i<ds_list_size(global.deck_list);i++){
		deck_map = ds_list_find_value(global.deck_list,i);
		ini_write_string("Decks",string(i),ds_map_find_value(deck_map,"name")+","+ds_list_write(ds_map_find_value(deck_map,"card_list")));
	}
	ini_close();
}