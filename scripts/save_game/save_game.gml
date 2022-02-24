// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function save_game(){
	file_delete("saveData.ini");	
	ini_open("saveData.ini");
	ini_write_string("Variables","card_inventory",ds_list_write(global.card_inventory));
	ini_write_string("Variables","deck_map",ds_map_write(global.deck_map));
	ini_close();
}