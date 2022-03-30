/// @description Insert description here
// You can write your code in this editor
if(ds_list_find_index(obj_game.menus,id)==obj_game.menu_selected_index&&global.selected_deck!=noone){
	room_goto(rm_battleground);
}