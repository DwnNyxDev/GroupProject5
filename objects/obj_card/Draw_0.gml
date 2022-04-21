if(in_hand){
	if(player_owner="me"){
		if(hovered){
			draw_set_alpha(glow_opacity);
			draw_rectangle_color(bbox_left-glow_size,bbox_top-glow_size,bbox_right+glow_size,bbox_bottom+glow_size,c_red,c_red,c_red,c_red,false);
			if(glow_dimmer){
				glow_opacity+=.02;
				if(glow_opacity>1){
					glow_dimmer=false;
				}
			}
			else{
				glow_opacity-=.02;
				if(glow_opacity<0){
					glow_dimmer=true;
				}
			}
		}
		draw_set_alpha(1);
		draw_self();
	}
	else if(player_owner="enemy"){
		//draw_sprite_ext(get_sprite_from_card_name(card_name,"card"),0,x,y,.5,.5,0,c_white,1);
		if(hovered){
			draw_set_alpha(glow_opacity);
			draw_rectangle_color(bbox_left-glow_size,bbox_top-glow_size,bbox_right+glow_size,bbox_bottom+glow_size,c_red,c_red,c_red,c_red,false);
			if(glow_dimmer){
				glow_opacity+=.02;
				if(glow_opacity>1){
					glow_dimmer=false;
				}
			}
			else{
				glow_opacity-=.02;
				if(glow_opacity<0){
					glow_dimmer=true;
				}
			}
		}
		draw_set_alpha(1);
		
		card_back = spr_human_card_back;
		if(string_pos("human",string_lower(card_name))!=0){
			card_back = spr_human_card_back;
		}
		else if(string_pos("skeleton",string_lower(card_name))!=0){
			card_back = spr_skeleton_card_back;
		}
		draw_sprite_ext(card_back,0,x,y,.5,.5,0,c_white,1);
		
	}
}
