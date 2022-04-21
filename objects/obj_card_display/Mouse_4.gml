/// @description Insert description here
// You can write your code in this editor
if(cards_bought <5 && global.gold >= price){
	ds_list_add(global.card_inventory,card_name);
	ini_open("saveData.ini");
	global.gold = global.gold - price;
	cards_bought++;
	ini_write_real("Variables", "cards_bought", cards_bought);
	ini_close();
}
draw_set_font(fnt_endor);
draw_set_color(c_black);
draw_text(room_width*0.11, room_height*0.08, global.gold);