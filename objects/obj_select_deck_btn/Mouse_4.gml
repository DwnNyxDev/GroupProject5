/// @description Insert description here
// You can write your code in this editor
global.deck_index = ds_list_find_index(obj_game.decks_created,id);
global.selected_deck = ds_list_find_value(global.deck_list,global.deck_index);
room_goto(rm_deck_editor);