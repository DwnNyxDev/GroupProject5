randomize();
menus = ds_list_create();
menu_selected_index = -1;
global.deck_list = ds_list_create();
global.card_inventory = ds_list_create();
selected_deck=noone;
curr_room=rm_start;
prev_room=rm_start;
<<<<<<< Updated upstream
global.phase = 0;//0=start,1=discard,2=play,3=combat,4=end
global.movingTroop = false;
global.gold = 0;
=======
global.gold = 60000;
>>>>>>> Stashed changes
ini_open("saveData.ini");
last_shop_reset = ini_read_real("Variables","last_shop_reset",0);
card_display = ini_read_real("Variables","card_display",spr_babybowman);
card_display2 = ini_read_real("Variables","card_display2",spr_babyspear);
card_display3 = ini_read_real("Variables", "card_display3", spr_goblin_sword);
ini_close();
decks_created = ds_list_create();
