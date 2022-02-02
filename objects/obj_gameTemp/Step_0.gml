if(room == rm_start){
	if(keyboard_check(vk_space)){
		room = rm_battleground;
	}
}
if(keyboard_check_pressed(vk_space)){
	global.phase++;
}
if(global.phase >= 5){
	global.phase = 0;
}