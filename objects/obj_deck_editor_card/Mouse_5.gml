/// @description Insert description here
// You can write your code in this editor
if(deck>0){
	for(i=0;i<ds_list_size(deck_card_list);i++){
		if(ds_list_find_value(deck_card_list,i)==card_name){
			ds_list_delete(deck_card_list,i);
			deck--;
			collection++;
			break;
		}
	}
}