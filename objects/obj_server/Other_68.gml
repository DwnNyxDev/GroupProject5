/// @description Insert description here
// You can write your code in this editor
e_id = ds_map_find_value(async_load,"id");
e_ip = ds_map_find_value(async_load,"ip");
e_type = ds_map_find_value(async_load,"type");

if(e_type = network_type_connect){
	show_debug_message("player connected");
	e_socket = ds_map_find_value(async_load,"socket");
	new_client = ds_map_create();
	ds_map_add(new_client,"socket",e_socket);
	ds_list_add(client_list,new_client);
}