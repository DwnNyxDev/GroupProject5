/// @description Insert description here
// You can write your code in this editor
socketNum=48001;
server_socket=network_create_server(network_socket_tcp,socketNum,10);
client = instance_create_layer(0,0,"Instances",obj_client);
client.c_type="host client";
client_list = ds_list_create();
alarm[0]=room_speed;
