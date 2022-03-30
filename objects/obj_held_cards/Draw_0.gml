/// @description Insert description here
// You can write your code in this editor
/*
if(ds_list_size(card_list)<3){
	for(i=0; i<ds_list_size(card_list)&&i<3; i++){
		card_name = ds_list_find_value(card_list,i);
		draw_sprite_ext(get_sprite_from_card_name(card_name),0,mouse_x-15*i,mouse_y-15*i,.5,.5,0,c_white,.75);
	}
}
else{
*/
	draw_sprite_ext(spr_humanCard_blank,0,mouse_x,mouse_y,.5,.5,0,c_white,.75);
	draw_text(mouse_x,mouse_y,ds_list_size(card_list));
//}