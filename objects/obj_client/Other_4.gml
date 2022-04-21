/// @description Insert description here
// You can write your code in this editor
if(room=rm_battleground){
	this_player = instance_create_layer(room_width-150,720,"Instances",obj_deck);
	this_player.player_owner="me";
	ds_map_copy(this_player.card_map,global.selected_deck);
	enemy_player = instance_create_layer(1216,96,"Instances",obj_deck);
	enemy_player.player_owner="enemy";
	ds_map_copy(enemy_player.card_map,enemy_deck);
}