/// @description Insert description here
// You can write your code in this editor
if(clicked){
	if(keyboard_string=""){
		deck_name = "What is the name of your deck?"
	}
	else{
		deck_name=keyboard_string
	}
	if(keyboard_check_pressed(vk_enter)){
		ds_map_add(global.deck_map,deck_name,ds_list_create());
		save_game();
		room_goto(rm_menu);
	}
}