/// @description Insert description here
// You can write your code in this editor
if(network_connect(obj_client.client_socket,host_ip,48001)<0){
	
}
else{
	obj_client.connected=true;
	network_destroy(obj_client.client_broadcast_socket);
}
