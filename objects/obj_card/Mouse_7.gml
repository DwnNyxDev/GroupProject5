//if on battlefield and you have enough
if(room=rm_battleground){
	closest_space = instance_nearest(mouse_x,mouse_y,obj_space);
	if(distance_to_object(closest_space)<40){
		new_soldier = instance_create_depth(closest_space.x,closest_space.y,-2,obj_soldier);
		new_soldier.sprite_index=get_sprite_from_card_name(card_name,"soldier");
		ds_list_delete(obj_deck.hand,ds_list_find_index(obj_deck.hand,id));
		instance_destroy();
	}
	else{
		y=startY;
		moving=false;
	}
}
	//make cost go down
//}