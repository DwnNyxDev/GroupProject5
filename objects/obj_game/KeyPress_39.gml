/// @description Insert description here
// You can write your code in this editor
if(room=rm_deck_selector){
	if(ds_list_find_value(decks_created,ds_list_size(decks_created)-1).bbox_right>room_width){
		deck_editor_xOffset-=288;
	}
}