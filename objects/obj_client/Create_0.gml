/// @description Insert description here
// You can write your code in this editor
client_broadcast_socket=network_create_socket_ext(network_socket_udp,6513);
client_socket=network_create_socket(network_socket_tcp);
network_set_config(network_config_connect_timeout,1000);
server_ip=noone;
connected=false;
c_type=noone;
enemy_deck = ds_map_create();
//network_connect(client_socket,"127.0.0.1",6513);
