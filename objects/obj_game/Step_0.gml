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
if(room=rm_start&&keyboard_check_pressed(vk_enter)){
	room_goto(rm_menu);
}
else if(room=rm_menu){
	if(keyboard_check_pressed(vk_left)&&menu_selected_index>0){
		for(i=0; i<ds_list_size(menus); i++){
			ds_list_find_value(menus,i).selected=false;
		}
		menu_selected_index--;
		ds_list_find_value(menus,menu_selected_index).selected=true;
	
	}
	else if(keyboard_check_pressed(vk_right)&&menu_selected_index<ds_list_size(menus)-1){
		for(i=0; i<ds_list_size(menus); i++){
			ds_list_find_value(menus,i).selected=false;
		}
		menu_selected_index++;
		ds_list_find_value(menus,menu_selected_index).selected=true;
	}
	else{
		selected_menu = ds_list_find_value(menus,menu_selected_index);
		if(selected_menu.x<room_width/2-25||selected_menu.x>room_width/2+25){
			increment = sign(room_width/2-selected_menu.x)*25
			for(i=0; i<ds_list_size(menus); i++){
				ds_list_find_value(menus,i).x+=increment;
			}
			
		}
		else if(selected_menu.x!=room_width/2){
			increment = room_width/2-selected_menu.x;
			for(i=0; i<ds_list_size(menus); i++){
				ds_list_find_value(menus,i).x+=increment;
			}
		}
		
		funcX = selected_menu.x/(room_width/2);
		blackground.image_alpha = (.5)*cos((2*pi*funcX)+pi)+.5;
		if(blackground.image_alpha>.95){
			if(selected_menu.menu_type="deck"){
				obj_background.sprite_index=spr_deck_menu_bg;
			}
			else if(selected_menu.menu_type="store"){
				obj_background.sprite_index=spr_store_menu_bg;
				audio_play_sound(sfx_shop_open,0,false);
			}
			else if(selected_menu.menu_type="battle"){
				obj_background.sprite_index=spr_battle_menu_bg;
			}
		}
		
	}
	
}




