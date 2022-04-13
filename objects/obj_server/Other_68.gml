/// @description Insert description here
// You can write your code in this editor
e_id = ds_map_find_value(async_load,"id");
e_ip = ds_map_find_value(async_load,"ip");
e_type = ds_map_find_value(async_load,"type");

if(e_type = network_type_connect){
	e_socket = ds_map_find_value(async_load,"socket");
	new_client = ds_map_create();
	ds_map_add(new_client,"socket",e_socket);
	ds_map_add(new_client,"ip",e_ip);
	ds_list_add(client_list,new_client);
	if(ds_list_size(client_list)==2){
		var buffer = buffer_create(256,buffer_grow,1);
		buffer_seek(buffer,buffer_seek_start,0);
		buffer_write(buffer,buffer_string,"send_deck");
		for(i=0;i<ds_list_size(client_list);i++){
			network_send_packet(ds_map_find_value(ds_list_find_value(client_list,i),"socket"),buffer,buffer_tell(buffer));
		}	
	}
}
else if(e_type = network_type_data){
	var read_buffer = ds_map_find_value(async_load,"buffer");
	var b_type = buffer_read(read_buffer,buffer_string);
	if(b_type="my_deck"){
		e_socket = ds_map_find_value(async_load,"socket");
		for(i=0; i<ds_list_size(client_list); i++){
			client_map = ds_list_find_value(client_list,i);
			client_ip = ds_map_find_value(client_map,"ip");
			client_socket = ds_map_find_value(client_map,"socket");
			if(client_ip!=e_ip){
				show_debug_message("Server: "+e_ip+" sending deck data to "+ds_map_find_value(client_map,"ip")+".");
				var buffer = buffer_create(256,buffer_grow,1);
				buffer_seek(buffer,buffer_seek_start,0);
				buffer_write(buffer,buffer_string,"enemy_deck");
				buffer_write(buffer,buffer_string,buffer_read(read_buffer,buffer_string));
				card_list_size = buffer_read(read_buffer,buffer_u8);
				buffer_write(buffer,buffer_u8,card_list_size);
				for(i=0;i<card_list_size; i++){
					buffer_write(buffer,buffer_string,buffer_read(read_buffer,buffer_string));
				}
				network_send_packet(client_socket,buffer,buffer_tell(buffer));
				buffer_delete(buffer);
				break;
			}
		}
	}
	else if(b_type="card_hovered"||b_type="card_unhovered"){
		e_socket = ds_map_find_value(async_load,"socket");
		for(i=0; i<ds_list_size(client_list); i++){
			client_map = ds_list_find_value(client_list,i);
			client_ip = ds_map_find_value(client_map,"ip");
			client_socket = ds_map_find_value(client_map,"socket");
			if(client_ip!=e_ip){
				var buffer = buffer_create(256,buffer_grow,1);
				buffer_seek(buffer,buffer_seek_start,0);
				buffer_write(buffer,buffer_string,b_type);
				buffer_write(buffer,buffer_u8,buffer_read(read_buffer,buffer_u8));
				network_send_packet(client_socket,buffer,buffer_tell(buffer));
				buffer_delete(buffer);
				break;
			}
		}
	}
}