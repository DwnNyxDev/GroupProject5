/// @description Insert description here
// You can write your code in this editor
if(ds_list_size(card_list)>0){
	top_card = ds_list_find_value(card_list,0);
	if(string_pos("human",string_lower(top_card))!=0){
		draw_sprite_ext(spr_human_card_back,0,room_width*.9,room_height-sprite_get_width(spr_human_card_back)/1.5,.5,.5,0,c_white,1);
	}
	else if(string_pos("skeleton",string_lower(top_card))!=0){
		draw_sprite_ext(spr_skeleton_card_back,0,room_width*.9,room_height-sprite_get_width(spr_human_card_back)/1.5,.5,.5,0,c_white,1);
	}
}
