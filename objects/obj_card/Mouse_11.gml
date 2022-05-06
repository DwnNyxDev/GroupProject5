/// @description Insert description here
// You can write your code in this editor
if(player_owner="me"){
	hovered=false;
	glow_opacity=0;
	glow_dimmer=false;
	if(global.game_mode = "multiplayer" && obj_client.connected){
		var buffer = buffer_create(256,buffer_grow,1);
		buffer_seek(buffer,buffer_seek_start,0);
		buffer_write(buffer,buffer_string,"card_unhovered");
		buffer_write(buffer,buffer_string,obj_client.c_type);
		buffer_write(buffer,buffer_u8,ds_list_find_index(deck_owner.hand,id));
		network_send_packet(obj_client.client_socket,buffer,buffer_tell(buffer));
		buffer_delete(buffer);
	}
}
/*
image_xscale /= 2;
image_yscale /= 2;
*/

