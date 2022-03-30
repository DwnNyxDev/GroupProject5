/// @description Insert description here
// You can write your code in this editor
if(mouse_x>obj_deck_add.bbox_left&&mouse_x<obj_deck_add.bbox_right&&mouse_y>obj_deck_add.bbox_top&&mouse_y<obj_deck_add.bbox_bottom){
	obj_deck_editor_card.held=0;
	deck_card_list = ds_map_find_value(global.selected_deck,"card_list");
	for(i=0; i<ds_list_size(card_list); i++){
		ds_list_add(deck_card_list,ds_list_find_value(card_list,i));
	}
	instance_destroy();
	save_game();
}