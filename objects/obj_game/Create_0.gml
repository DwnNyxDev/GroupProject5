randomize();
menus = ds_list_create();
menu_selected_index = -1;
global.deck_list = ds_list_create();
global.deck_index = 0;
global.card_inventory = ds_list_create();
decks_created = ds_list_create();
global.selected_deck=noone;
global.money = 1;
counted = false;
newMoney = 1;
global.phase = 0;//0=start,1=discard,2=play,3=combat,4=end
global.movingTroop = false;
totalTurns = 0;
curr_room=rm_start;
prev_room=rm_start;
global.gold = 60000;
ini_open("saveData.ini");
global.player_name = ini_read_string("Variables","player_name",noone);
last_shop_reset = ini_read_real("Variables","last_shop_reset",0);
card_display = 
ini_read_real("Variables","card_display",spr_babybowman);
card_display2 = ini_read_real("Variables","card_display2",spr_babyspear);
card_display3 = ini_read_real("Variables", "card_display3", spr_goblin_sword);
num_decks = ini_read_string("Variables","num_decks",0)
card_inv_string = ini_read_string("Variables","card_inventory","none");
if(card_inv_string!="none"){
	ds_list_read(global.card_inventory,card_inv_string);
	for(i=0; i<ds_list_size(global.card_inventory);i++){
		show_debug_message(ds_list_find_value(global.card_inventory,i));
	}
}
if(num_decks>0){
	for(i=0;i<num_decks;i++){
		deck_string = ini_read_string("Decks",string(i),"none");
		if(deck_string!="none"){
			new_map = ds_map_create();
			ds_map_add(new_map,"name",string_copy(deck_string,1,string_pos(",",deck_string)-1));
			card_list = ds_list_create();
			ds_list_read(card_list,string_copy(deck_string,string_pos(",",deck_string)+1,string_length(deck_string)-string_pos(",",deck_string)));
			ds_map_add_list(new_map,"card_list",card_list);
			ds_list_add(global.deck_list,new_map);
		}
	}
}
if(num_decks==1){
	global.selected_deck=ds_list_find_value(global.deck_list,0);
}
ini_close()
decks_created = ds_list_create();
deck_selector_xOffset = 0;
deck_editor_index=0;
deck_editor_card_groups = ds_list_create();

global.temp_deck = ds_list_create();
global.hand = ds_list_create();
global.game_mode="singleplayer";
global.client_socket=noone;

