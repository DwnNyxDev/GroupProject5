/// @description Insert description here
// You can write your code in this editor
if(collection-deck-held>0){
	if(!instance_exists(obj_held_cards)){
		instance_create_layer(mouse_x,mouse_y,"Foreground",obj_held_cards);
		ds_list_add(obj_held_cards.card_list,card_name);
		held++;
	}
	else{
		ds_list_add(obj_held_cards.card_list,card_name);
		held++;
	}
}

