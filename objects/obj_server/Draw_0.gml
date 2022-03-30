/// @description Insert description here
// You can write your code in this editor
if(ds_list_size(client_list)<2){
	draw_text(room_width/2,room_height/2,"Waiting on second player");
}
else{
	draw_text(room_width/2,room_height/2,"Second player connected");
}