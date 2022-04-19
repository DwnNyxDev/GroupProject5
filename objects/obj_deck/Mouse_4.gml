/// @description Insert description here
// You can write your code in this editor
if(ds_list_size(hand)<6){
	if(player_owner="me"){
		new_card = instance_create_layer(start_x+(sprite_get_width(spr_archerCard)/2)*5,y,"Instances",obj_card);
		if(obj_client.connected){
			var buffer = buffer_create(256,buffer_grow,1);
			buffer_seek(buffer,buffer_seek_start,0);
			buffer_write(buffer,buffer_string,"draw_card");
			network_send_packet(obj_client.client_socket,buffer,buffer_tell(buffer));
			buffer_delete(buffer);
		}
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