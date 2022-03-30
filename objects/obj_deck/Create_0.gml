/// @description Insert description here
// You can write your code in this editor
card_list = ds_list_create();
ds_list_copy(card_list,ds_map_find_value(global.selected_deck,"card_list"));
hand = ds_list_create();
graveyard = ds_list_create();
ds_list_shuffle(card_list);
first_hand=true;
player_owner="me";
owner=noone;