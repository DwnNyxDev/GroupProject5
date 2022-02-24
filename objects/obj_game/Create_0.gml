menus = ds_list_create();
menu_selected_index = -1;
deck_list = ds_list_create();
card_inventory = ds_list_create();
selected_deck=noone;
global.money = 0;
newMoney = 1;
global.phase = 0;//0=start,1=discard,2=play,3=combat,4=end
global.movingTroop = false;
totalTurns = 0;