randomize();
menus = ds_list_create();
menu_selected_index = -1;
global.deck_map = ds_map_create();
global.card_inventory = ds_list_create();
selected_deck=noone;
global.money = 0;
newMoney = 1;
global.phase = 0;//0=start,1=discard,2=play,3=combat,4=end
global.movingTroop = false;
totalTurns = 0;
curr_room=rm_start;
prev_room=rm_start;
global.gold = 0;
ini_open("saveData.ini");
last_shop_reset = ini_read_real("Variables","last_shop_reset",0);
card_display = ini_read_real("Variables","card_display",spr_babybowman);
card_display2 = ini_read_real("Variables","card_display",spr_babyspear);
ini_close()
decks_created = ds_list_create();
