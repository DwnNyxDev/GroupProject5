/// @description Insert description here
// You can write your code in this editor
image_xscale=.5;
image_yscale=.5;

deck = 0;
deck_card_list = ds_map_find_value(global.selected_deck,"card_list");
for(i=0;i<ds_list_size(deck_card_list);i++){
	if(ds_list_find_value(deck_card_list,i)==card_name){
		deck++;
	}
}

collection = 0;
for(i=0;i<ds_list_size(global.card_inventory);i++){
	if(ds_list_find_value(global.card_inventory,i)==card_name){
		collection++;
	}
}

