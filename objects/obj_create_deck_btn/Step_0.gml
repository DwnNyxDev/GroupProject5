/// @description Insert description here
// You can write your code in this editor
if(clicked){
	if(keyboard_string=""){
		deck_name = "What is the name of your deck?"
	}
	else{
		if(string_length(keyboard_string)<=15&&string_pos(" ",keyboard_string)==0){
			deck_name=keyboard_string
		}
		else if(deck_name == "What is the name of your deck?"){
			keyboard_string="";
		}
		else{
			keyboard_string=deck_name
		}
	}
	if(keyboard_check_pressed(vk_enter)){
		new_deck = ds_map_create();
		ds_map_add(new_deck,"name",deck_name);
		ds_map_add_list(new_deck,"card_list",ds_list_create());
		ds_list_add(global.deck_list,new_deck);
		save_game();
		room_goto(rm_menu);
	}
}
else{
	x=288+288*ds_list_find_index(obj_game.decks_created,id)+obj_game.deck_selector_xOffset;
}
