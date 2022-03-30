/// @description Insert description here
// You can write your code in this editor
if(room=rm_start){
	audio_play_sound(sfx_startScreen,0,true);
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
else if(room=rm_deck_selector){
	back_btn = instance_create_layer(1180,132,"Instances",obj_btn);
	back_btn.btn_type = "back_room";
	back_btn.outline_color = c_black;
	back_btn.fill_color = c_aqua;
	ds_list_clear(decks_created);
	if(ds_list_size(global.deck_list)==0){
		ds_list_add(decks_created,instance_create_layer(room_width/2,room_height/2,"Instances",obj_create_deck_btn));
	}
	else{
		for(i=0; i<ds_list_size(global.deck_list); i++){
			deck_map = ds_list_find_value(global.deck_list,i);
			deck_btn = instance_create_layer(288+288*i,room_height/2,"Instances",obj_select_deck_btn);
			deck_btn.deck_map = deck_map;
			ds_list_add(decks_created,deck_btn);
		}
		ds_list_add(decks_created,instance_create_layer(288+288*ds_list_size(global.deck_list),room_height/2,"Instances",obj_create_deck_btn));
	}
}
else if(room=rm_deck_editor){
	back_btn = instance_create_layer(room_width*.95,room_height*.05,"Instances",obj_btn);
	back_btn.btn_type = "back_room";
	back_btn.outline_color = c_black;
	back_btn.fill_color = c_aqua;
	ds_list_clear(deck_editor_card_groups);
	deck_editor_index=0;
	instance_create_layer(room_width/2,room_height/2,"Preground",obj_deck_add);
}
else if(room=rm_store){
	back_btn = instance_create_layer(1180,132,"Instances",obj_btn);
	back_btn.btn_type = "back_room";
	back_btn.outline_color = c_black;
	back_btn.fill_color = c_aqua;
	if(date_second_span(last_shop_reset,date_current_datetime())>=20){
		card_display = choose(spr_archerCard, spr_scoutCard, spr_midKnightCard);
		ini_open("saveData.ini")
		ini_write_real("Variables","last_shop_reset",date_current_datetime());
		ini_write_real("Variables","card_display",card_display);
		ini_close();
	}
}
else if(room=rm_battleground){
	back_btn = instance_create_layer(1180,132,"Instances",obj_btn);
	back_btn.btn_type = "back_room";
	back_btn.outline_color = c_black;
	back_btn.fill_color = c_aqua;
	if(global.game_mode="singleplayer"){
		this_player = instance_create_layer(1216,672,"Instances",obj_deck);
		this_player.player_owner="me";
	}
	else if(global.game_mode="multiplayer"){
		this_player = instance_create_layer(1216,96,"Instances",obj_deck);
		this_player.player_owner="enemy";
	}
}
else if(room=rm_pvp_setup){
	back_btn = instance_create_layer(1180,132,"Instances",obj_btn);
	back_btn.btn_type = "back_room";
	back_btn.outline_color = c_black;
	back_btn.fill_color = c_aqua;
	create_btn = instance_create_layer(room_width*.25,room_height*.5,"Instances",obj_pvp_btn);
	create_btn.btn_type="create";
	join_btn = instance_create_layer(room_width*.75,room_height*.5,"Instances",obj_pvp_btn);
	join_btn.btn_type="join";
}