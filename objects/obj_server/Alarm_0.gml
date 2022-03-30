/// @description Insert description here
// You can write your code in this editor
if(!client_connected){
	var buffer = buffer_create(256,buffer_grow,1);
	buffer_seek(buffer,buffer_seek_start,0);
	buffer_write(buffer,buffer_string,"Yerr");
	val = network_send_broadcast(server_socket,6513,buffer,buffer_tell(buffer));
	if(val<0){
		show_debug_message("broadcast failed");
	}
	else{
		show_debug_message("broadcast success! Bytes sent: "+string(val));
	}
	buffer_delete(buffer);
	alarm[0]=room_speed*5;
}