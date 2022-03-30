/// @description Insert description here
// You can write your code in this editor
if(cards_bought2 < 5 && global.gold >= price){
	ds_list_add(global.card_inventory,card_name);
	ini_open("saveData.ini");
	global.gold = global.gold - price;
	cards_bought2++;
	ini_write_real("Variables", "cards_bought2", cards_bought2);
	ini_close();
}