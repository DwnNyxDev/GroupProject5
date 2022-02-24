/// @description Insert description here
// You can write your code in this editor
num_types = ds_list_size(card_types);
if(num_types==4){
	for(i=0; i<num_types; i++){
		card_type = ds_list_find_value(card_types,i);
		if(i<=1){
			if(card_type=="human"){
				draw_sprite_part(spr_human_card_back,0,(sprite_get_width(spr_human_card_back)/2)*(i%2),0,sprite_get_width(spr_human_card_back)/2,sprite_get_height(spr_human_card_back)/2,bbox_left+(sprite_get_width(spr_human_card_back)/2)*(i%2),bbox_top);
			}
			else if(card_type=="zombie"){
				draw_sprite_part(spr_zombie_card_back,0,(sprite_get_width(spr_zombie_card_back)/2)*(i%2),0,sprite_get_width(spr_zombie_card_back)/2,sprite_get_height(spr_zombie_card_back)/2,bbox_left+(sprite_get_width(spr_human_card_back)/2)*(i%2),bbox_top);
			}
			else if(card_type=="skeleton"){
				draw_sprite_part(spr_skeleton_card_back,0,(sprite_get_width(spr_skeleton_card_back)/2)*(i%2),0,sprite_get_width(spr_skeleton_card_back)/2,sprite_get_height(spr_skeleton_card_back)/2,bbox_left+(sprite_get_width(spr_human_card_back)/2)*(i%2),bbox_top);
			}
			else if(card_type=="beast"){
				draw_sprite_part(spr_beast_card_back,0,(sprite_get_width(spr_beast_card_back)*(i%2)/2),0,sprite_get_width(spr_beast_card_back)/2,sprite_get_height(spr_beast_card_back)/2,bbox_left+(sprite_get_width(spr_human_card_back)/2)*(i%2),bbox_top);
			}
		}
		else{
			if(card_type=="human"){
				draw_sprite_part(spr_human_card_back,0,(sprite_get_width(spr_human_card_back)/2)*(i%2),sprite_get_height(spr_human_card_back)/2,sprite_get_width(spr_human_card_back)/2,sprite_get_height(spr_human_card_back)/2,bbox_left+(sprite_get_width(spr_human_card_back)/2)*(i%2),y);
			}
			else if(card_type=="zombie"){
				draw_sprite_part(spr_zombie_card_back,0,(sprite_get_width(spr_zombie_card_back)/2)*(i%2),sprite_get_height(spr_zombie_card_back)/2,sprite_get_width(spr_zombie_card_back)/2,sprite_get_height(spr_zombie_card_back)/2,bbox_left+(sprite_get_width(spr_human_card_back)/2)*(i%2),y);
			}
			else if(card_type=="skeleton"){
				draw_sprite_part(spr_skeleton_card_back,0,(sprite_get_width(spr_skeleton_card_back)/2)*(i%2),sprite_get_height(spr_skeleton_card_back)/2,sprite_get_width(spr_skeleton_card_back)/2,sprite_get_height(spr_skeleton_card_back)/2,bbox_left+(sprite_get_width(spr_human_card_back)/2)*(i%2),y);
			}
			else if(card_type=="beast"){
				draw_sprite_part(spr_beast_card_back,0,(sprite_get_width(spr_beast_card_back)*(i%2)/2),sprite_get_height(spr_beast_card_back)/2,sprite_get_width(spr_beast_card_back)/2,sprite_get_height(spr_beast_card_back)/2,bbox_left+(sprite_get_width(spr_human_card_back)/2)*(i%2),y);
			}
		}
	}
}
else if(num_types==3){
	for(i=0; i<num_types; i++){
		card_type = ds_list_find_value(card_types,i);
		if(card_type=="human"){
			draw_sprite_part(spr_human_card_back,0,(sprite_get_width(spr_human_card_back)/num_types)*(i%num_types),0,sprite_get_width(spr_human_card_back)/num_types,sprite_get_height(spr_human_card_back),bbox_left+(sprite_get_width(spr_human_card_back)/num_types)*(i%num_types),bbox_top);
		}
		else if(card_type=="zombie"){
			draw_sprite_part(spr_zombie_card_back,0,(sprite_get_width(spr_zombie_card_back)/num_types)*(i%num_types),0,sprite_get_width(spr_zombie_card_back)/num_types,sprite_get_height(spr_zombie_card_back),bbox_left+(sprite_get_width(spr_human_card_back)/num_types)*(i%num_types),bbox_top);
		}
		else if(card_type=="skeleton"){
			draw_sprite_part(spr_skeleton_card_back,0,(sprite_get_width(spr_skeleton_card_back)/num_types)*(i%num_types),0,sprite_get_width(spr_skeleton_card_back)/num_types,sprite_get_height(spr_skeleton_card_back),bbox_left+(sprite_get_width(spr_human_card_back)/num_types)*(i%num_types),bbox_top);
		}
		else if(card_type=="beast"){
			draw_sprite_part(spr_beast_card_back,0,(sprite_get_width(spr_beast_card_back)/num_types)*(i%num_types),0,sprite_get_width(spr_beast_card_back)/num_types,sprite_get_height(spr_beast_card_back),bbox_left+(sprite_get_width(spr_human_card_back)/num_types)*(i%num_types),bbox_top);
		}
	}
}
else if(num_types==2){
	for(i=0; i<num_types; i++){
		card_type = ds_list_find_value(card_types,i);
		if(card_type=="human"){
			draw_sprite_part(spr_human_card_back,0,(sprite_get_width(spr_human_card_back)/2)*(i%2),0,sprite_get_width(spr_human_card_back)/2,sprite_get_height(spr_human_card_back),bbox_left+(sprite_get_width(spr_human_card_back)/2)*(i%2),bbox_top);
		}
		else if(card_type=="zombie"){
			draw_sprite_part(spr_zombie_card_back,0,(sprite_get_width(spr_zombie_card_back)/2)*(i%2),0,sprite_get_width(spr_zombie_card_back)/2,sprite_get_height(spr_zombie_card_back),bbox_left+(sprite_get_width(spr_human_card_back)/2)*(i%2),bbox_top);
		}
		else if(card_type=="skeleton"){
			draw_sprite_part(spr_skeleton_card_back,0,(sprite_get_width(spr_skeleton_card_back)/2)*(i%2),0,sprite_get_width(spr_skeleton_card_back)/2,sprite_get_height(spr_skeleton_card_back),bbox_left+(sprite_get_width(spr_human_card_back)/2)*(i%2),bbox_top);
		}
		else if(card_type=="beast"){
			draw_sprite_part(spr_beast_card_back,0,(sprite_get_width(spr_beast_card_back)*(i%2)/2),0,sprite_get_width(spr_beast_card_back)/2,sprite_get_height(spr_beast_card_back),bbox_left+(sprite_get_width(spr_human_card_back)/2)*(i%2),bbox_top);
		}
	}
}
else if(num_types==1){
	card_type=ds_list_find_value(card_types,0);
	if(card_type=="human"){
		draw_sprite(spr_human_card_back,0,x,y);
	}
	else if(card_type=="zombie"){
		draw_sprite(spr_zombie_card_back,0,x,y);
	}
	else if(card_type=="skeleton"){
		draw_sprite(spr_skeleton_card_back,0,x,y);
	}
	else if(card_type=="beast"){
		draw_sprite(spr_beast_card_back,0,x,y);
	}
}
else{
	draw_sprite(spr_human_card_back,0,x,y);
}
draw_set_halign(fa_center);
draw_set_font(fnt_endor);
draw_text_outlined(x,bbox_bottom+35,3,c_black,c_aqua,deck_name);