/// @description Insert description here
// You can write your code in this editor
if(ds_exists(async_load,ds_type_map)){
	if(!connected&&c_type!="host client"){
		server_ip=ds_map_find_value(async_load,"ip");
		show_debug_message(server_ip);
		if(network_connect(client_socket,server_ip,48001)<0){
			server_ip=noone;
			connected=false;
		}
		else{
			connected=true;
			network_destroy(client_broadcast_socket);	
		}
	}
	else if(connected){
		e_id = ds_map_find_value(async_load, "id");
		if(e_id = client_socket){
			var read_buffer = ds_map_find_value(async_load,"buffer");
			buffer_seek(read_buffer,buffer_seek_start,0);
			var b_type = buffer_read(read_buffer,buffer_string);
			if(b_type="send_deck"){
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
			else if(b_type="enemy_deck"){
				deck_name = buffer_read(read_buffer,buffer_string);
				show_debug_message(deck_name);
				ds_map_clear(enemy_deck);
				ds_map_add(enemy_deck,"name",deck_name);
				card_list_size = buffer_read(read_buffer,buffer_u8);
				temp_list=ds_list_create();
				for(i=0;i<card_list_size;i++){
					ds_list_add(temp_list,buffer_read(read_buffer,buffer_string));
				}
				ds_map_add_list(enemy_deck,"card_list",temp_list);
				global.game_mode="multiplayer";
				room_goto(rm_battleground);
			}
		}
	}
}