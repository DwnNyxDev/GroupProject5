/// @description Insert description here
// You can write your code in this editor

sprite_index = get_sprite_from_card_name(card_name,"card");

if(room=rm_deck_editor||room=rm_battleground){
	image_xscale=.5;
	image_yscale=.5;
}

if(moving){
	x=mouse_x;
	y=mouse_y;
	if(global.money >= card_cost && (global.phase == 2 || global.phase == 4) && mouse_y < 400){
		show_debug_message(mouse_y);
		if(card_type == "soldier"){
			card_physical = instance_create_depth(instance_nearest(mouse_x,1000,obj_space).x,instance_nearest(mouse_x,100000,obj_space).y,-2,obj_soldier1);
			card_physical.attack = card_attack;
			card_physical.defense = card_health;
			card_physical.sprite = card_sprite;
			card_physical.name = card_name;
			card_physical.race = card_race;
			global.money -= card_cost;
			instance_destroy();
		}
	}
}
else if(in_hand){
	if(player_owner="me"){
		pos_x = deck_owner.start_x+(sprite_get_width(spr_archerCard)/2)*ds_list_find_index(deck_owner.hand,id);
	}
	else{
		pos_x = deck_owner.start_x-(sprite_get_width(spr_archerCard)/2)*ds_list_find_index(deck_owner.hand,id);
	}
	if(x!=pos_x){
		difference = x-pos_x;
		if(abs(difference)<5){
			x=pos_x;
		}
		else{
			x-=sign(difference)*5;
		}
	}
}