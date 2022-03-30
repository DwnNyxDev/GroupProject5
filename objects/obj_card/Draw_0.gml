if(in_hand){
	if(player_owner="me"){
		draw_sprite_ext(get_sprite_from_card_name(card_name,"card"),0,x,y,.5,.5,0,c_white,1);
	}
	else if(player_owner="enemy"){
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
