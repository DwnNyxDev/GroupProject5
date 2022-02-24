menus = ds_list_create();
menu_selected_index = -1;
global.deck_map = ds_map_create();
global.card_inventory = ds_list_create();
selected_deck=noone;
curr_room=rm_start;
prev_room=rm_start;
global.phase = 0;//0=start,1=discard,2=play,3=combat,4=end
global.movingTroop = false;
decks_created = ds_list_create();