/// @description Insert description here
// You can write your code in this editor
if(room=rm_menu){
	store_btn = instance_create_layer(0,384,"Instances",obj_store_btn);
	deck_btn = instance_create_layer(room_width/2,384,"Instances",obj_deck_btn);
	deck_btn.selected=true;
	ds_list_add(menus,store_btn);
	ds_list_add(menus,deck_btn);
	menu_selected_index = ds_list_find_index(menus,deck_btn);
}