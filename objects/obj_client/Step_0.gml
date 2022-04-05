/// @description Insert description here
// You can write your code in this editor

if(!connected&&c_type="host client"){
	server_ip="127.0.0.1";
	if(network_connect(client_socket,server_ip,48001)<0){
		show_debug_message("burh how can't you connect to yourself");
	}
	else{
		connected=true;
		network_destroy(client_broadcast_socket);	
	}
}