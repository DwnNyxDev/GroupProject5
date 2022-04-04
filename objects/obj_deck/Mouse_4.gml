/// @description Insert description here
// You can write your code in this editor
show_debug_message("whasup");
if(ds_list_size(hand)<6){
	if(player_owner="me"){
		new_card = instance_create_layer(start_x+(sprite_get_width(spr_archerCard)/2)*5,y,"Instances",obj_card);
	}
	else{
		new_card = instance_create_layer(start_x-(sprite_get_width(spr_archerCard)/2)*5,y,"Instances",obj_card);
	}
	new_card.card_name=ds_list_find_value(card_list,0);
	new_card.list_owner = hand;
	new_card.in_hand=true;
	new_card.player_owner = player_owner;
	new_card.deck_owner = id;
	ds_list_add(hand,new_card);
	ds_list_delete(card_list,0);
}