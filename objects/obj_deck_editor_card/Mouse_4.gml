/// @description Insert description here
// You can write your code in this editor
if(collection-deck-held>0&&ds_list_size(deck_card_list)<60){
	if(!instance_exists(obj_held_cards)){
		instance_create_layer(mouse_x,mouse_y,"Foreground",obj_held_cards);
		ds_list_add(obj_held_cards.card_list,card_name);
		held++;
	}
	else if(ds_list_size(obj_held_cards.card_list)+ds_list_size(deck_card_list)<60){
		ds_list_add(obj_held_cards.card_list,card_name);
		held++;
	}
}

