/// @description Insert description here
// You can write your code in this editor
if(cards_bought3 < 5 && global.gold >= price){
	ds_list_add(global.card_inventory,card_name);
	ini_open("saveData.ini");
	global.gold = global.gold - price;
	cards_bought3++;
	ini_write_real("Variables", "cards_bought3", cards_bought3);
	ini_close();
}