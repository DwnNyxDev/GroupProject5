<<<<<<< Updated upstream
if(room == rm_start){
	if(keyboard_check(vk_space)){
		room = rm_battleground;
	}
}
=======
>>>>>>> Stashed changes
if(keyboard_check_pressed(vk_space)){
	global.phase++;
}
if(global.phase==0 && !counted){
	global.money += newMoney;
	counted = true;
}
if(global.phase >= 5){
	counted = false;
	global.phase = 0;
	totalTurns ++;
}
if(room=rm_start&&keyboard_check_pressed(vk_enter)){
	if(global.player_name!=noone){
		room_goto(rm_menu);
	}
	else{
		room_goto(rm_name_editor);
	}
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
else if(room == rm_store){

	
}
else if(room == rm_deck_editor){
	if(ds_list_find_index(global.card_inventory,"Human Archer")!=-1&&ds_list_find_index(deck_editor_card_groups,"Human Archer")==-1){
		new_card_group = instance_create_layer(125+125*(deck_editor_index%3),192+192*floor(deck_editor_index/3),"Instances",obj_deck_editor_card);
		new_card_group.sprite_index=spr_archerCard;
		new_card_group.card_name = "Human Archer";
		deck_editor_index++;
		ds_list_add(deck_editor_card_groups,"Human Archer")
	}
	if(ds_list_find_index(global.card_inventory,"Human High Knight")!=-1&&ds_list_find_index(deck_editor_card_groups,"Human High Knight")==-1){
		new_card_group = instance_create_layer(125+125*(deck_editor_index%3),192+192*floor(deck_editor_index/3),"Instances",obj_deck_editor_card);
		new_card_group.sprite_index=spr_highKnightCard;
		new_card_group.card_name = "Human High Knight";
		deck_editor_index++;
		ds_list_add(deck_editor_card_groups,"Human High Knight")
	}
	if(ds_list_find_index(global.card_inventory,"Human Wizard")!=-1&&ds_list_find_index(deck_editor_card_groups,"Human Wizard")==-1){
		new_card_group = instance_create_layer(125+125*(deck_editor_index%3),192+192*floor(deck_editor_index/3),"Instances",obj_deck_editor_card);
		new_card_group.sprite_index=spr_humanWizardCard;
		new_card_group.card_name = "Human Wizard";
		deck_editor_index++;
		ds_list_add(deck_editor_card_groups,"Human Wizard")
	}
	if(ds_list_find_index(global.card_inventory,"Human Mid Knight")!=-1&&ds_list_find_index(deck_editor_card_groups,"Human Mid Knight")==-1){
		new_card_group = instance_create_layer(125+125*(deck_editor_index%3),192+192*floor(deck_editor_index/3),"Instances",obj_deck_editor_card);
		new_card_group.sprite_index=spr_midKnightCard;
		new_card_group.card_name = "Human Mid Knight";
		deck_editor_index++;
		ds_list_add(deck_editor_card_groups,"Human Mid Knight")
	}
	if(ds_list_find_index(global.card_inventory,"Skeleton Mid Knight")!=-1&&ds_list_find_index(deck_editor_card_groups,"Skeleton Mid Knight")==-1){
		new_card_group = instance_create_layer(125+125*(deck_editor_index%3),192+192*floor(deck_editor_index/3),"Instances",obj_deck_editor_card);
		new_card_group.sprite_index=spr_skeleton_midKnightCard;
		new_card_group.card_name = "Skeleton Mid Knight";
		deck_editor_index++;
		ds_list_add(deck_editor_card_groups,"Skeleton Mid Knight")
	}
}