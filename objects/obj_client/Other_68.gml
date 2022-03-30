/// @description Insert description here
// You can write your code in this editor
if(ds_exists(async_load,ds_type_map)){
	if(!connected){
		server_ip=ds_map_find_value(async_load,"ip");
		show_debug_message(server_ip);
		if(network_connect(client_socket,server_ip,48001)<0){
			server_ip=noone;
			connected=false;
		}
		else{
			connected=true;
			network_destroy(client_broadcast_socket);
			var buffer = buffer_create(256,buffer_grow,1);
			buffer_seek(buffer,buffer_seek_start,0);
			buffer_write(buffer,buffer_string,"my_deck");
			
			buffer_write(buffer,buffer_string,ds_map_find_value(global.selected_deck,"name"));
			card_list = ds_map_find_value(global.selected_deck,"card_list");
			buffer_write(buffer,buffer_u8,ds_list_size(card_list));
			for(i=0; i<ds_list_size(card_list); i++){
				buffer_write(buffer,buffer_string,ds_list_find_value(card_list,i));
			}
			network_send_packet(client_socket,buffer,buffer_tell(buffer));
			buffer_delete(buffer);
			
		}
	}
	else{
		var read_buffer = ds_map_find_value(async_load,"buffer");
		var b_type = buffer_read(read_buffer,buffer_string);
		if(b_type="enemy_deck"){
			ds_map_add(enemy_deck,"name",buffer_read(read_buffer,buffer_string));
			card_list_size = buffer_read(read_buffer,buffer_u8);
			temp_list=ds_list_create();
			for(i=0;i<card_list_size;i++){
				ds_list_add(temp_list,buffer_read(read_buffer,buffer_string));
			}
			global.game_mode="multiplayer";
			room_goto(rm_battleground);
		}
	}
}