/// @description Insert description here
// You can write your code in this editor
show_debug_message("welp");
if(network_connect(client_socket,"127.0.0.1",48001)<0){
	connected=false;
}
else{
	connected=true;
}
show_debug_message("hip yeah");
if(!connected){
	alarm[0]=room_speed*5;
}