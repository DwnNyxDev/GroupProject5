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
		}
	}
}