/// @description Insert description here
// You can write your code in this editor
if(first_hand){
	if(global.game_mode="singleplayer"){
		ds_list_copy(card_list,ds_map_find_value(global.selected_deck,"card_list"));
	}
	else{
		ds_list_copy(card_list,ds_map_find_value(card_map,"card_list"));
	}
	if(player_owner="me"){
		start_x = room_width/2-sprite_get_width(spr_archerCard)/4-sprite_get_width(spr_archerCard);
	}
	else{
		start_x = room_width/2+sprite_get_width(spr_archerCard)/4+sprite_get_width(spr_archerCard)
	}
	for(i=0; i<6&&i<ds_list_size(card_list); i++){
		if(player_owner="me"){
			new_card = instance_create_layer(start_x+(sprite_get_width(spr_archerCard)/2)*i,y,"Instances",obj_card);
		}
		else{
			new_card = instance_create_layer(start_x-(sprite_get_width(spr_archerCard)/2)*i,y,"Instances",obj_card);
		}
		new_card.card_name=ds_list_find_value(card_list,i);
		show_debug_message(new_card.card_name);
		new_card.list_owner = hand;
		new_card.in_hand=true;
		new_card.player_owner = player_owner;
		new_card.deck_owner=id;
		ds_list_add(hand,new_card);
		ds_list_delete(card_list,i);
	}
	first_hand=false
}