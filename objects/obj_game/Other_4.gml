/// @description Insert description here
// You can write your code in this editor
if(room=rm_start){
	audio_play_sound(sfx_startScreen,0,true);
	instance_create_layer(room_width/2,room_height/2,"Instances",obj_card);
}
else if(room=rm_menu){
	audio_stop_all();
	blackground = instance_create_layer(0,0,"Preground",obj_dark);
	blackground.image_alpha=0;
	store_btn = instance_create_layer(0,384,"Instances",obj_store_btn);
	deck_btn = instance_create_layer(room_width/2,384,"Instances",obj_deck_btn);
	battle_btn = instance_create_layer(room_width,384,"InstanceS",obj_battle_btn);
	deck_btn.selected=true;
	ds_list_clear(menus);
	ds_list_add(menus,store_btn);
	ds_list_add(menus,deck_btn);
	ds_list_add(menus,battle_btn);
	menu_selected_index = ds_list_find_index(menus,deck_btn);
}
else if(room=rm_deck_editor){
	back_btn = instance_create_layer(1180,132,"Instances",obj_btn);
	back_btn.btn_type = "back_room";
	back_btn.outline_color = c_black;
	back_btn.fill_color = c_aqua;
	ds_list_clear(decks_created);
	if(ds_list_size(global.deck_list)==0){
		ds_list_add(decks_created,instance_create_layer(room_width/2,room_height/2,"Instances",obj_create_deck_btn));
	}
	else if(ds_list_size(global.deck_list)%2!=0){
		//288
	}
}