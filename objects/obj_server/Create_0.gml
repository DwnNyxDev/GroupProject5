/// @description Insert description here
// You can write your code in this editor
socketNum=48001;
server_socket=network_create_server(network_socket_tcp,socketNum,10);
instance_create_layer(0,0,"Instances",obj_client);
client_connected=false;
alarm[0]=room_speed;
