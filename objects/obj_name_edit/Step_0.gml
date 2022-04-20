/// @description Insert description here
// You can write your code in this editor
if(keyboard_string=""){
		user_name = "What is your user name?"
	}
	else{
		if(string_length(keyboard_string)<=15&&string_pos(" ",keyboard_string)==0){
			user_name=keyboard_string
		}
		else if(user_name == "What is your user name?"){
			keyboard_string="";
		}
		else{
			keyboard_string=user_name
		}
	}
	if(keyboard_check_pressed(vk_enter)&&string_length(user_name)>3&&user_name!="What is your user name?"){
		global.player_name=user_name;
		save_game();
		room_goto(rm_menu);
	}
