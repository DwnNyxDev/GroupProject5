//if on battlefield and you have enough
<<<<<<< Updated upstream
	instance_create_depth(instance_nearest(mouse_x,mouse_y,obj_space).x,instance_nearest(mouse_x,mouse_y,obj_space).y,-2,card_object);
=======
if(player_owner="me" && global.game_mode = "multiplayer"){
	if(room=rm_battleground){
		closest_space = instance_nearest(mouse_x,1800,obj_space);
		if(distance_to_object(closest_space)<40 && hovered && !closest_space.occupying){
			if(obj_client.connected){
				var buffer = buffer_create(256,buffer_grow,1);
				buffer_seek(buffer,buffer_seek_start,0);
				buffer_write(buffer,buffer_string,"soldier_created");
				buffer_write(buffer,buffer_string,obj_client.c_type);
				buffer_write(buffer,buffer_u8,ds_list_find_index(deck_owner.hand,id));
				buffer_write(buffer,buffer_u16,closest_space.x);
				buffer_write(buffer,buffer_u16,closest_space.y);
				network_send_packet(obj_client.client_socket,buffer,buffer_tell(buffer));
				buffer_delete(buffer);
			}
		}
	}
}
else if(player_owner="me" && global.game_mode != "multiplayer"){
	if(room=rm_battleground){
		closest_space = instance_nearest(mouse_x,1800,obj_space);
		if(distance_to_object(closest_space)<40 && hovering && !closest_space.occupying){
			closest_space.occupying = true;
			new_soldier = instance_create_depth(closest_space.x,closest_space.y,-2,obj_soldier);
			new_soldier.sprite_index=get_sprite_from_card_name(card_name,"soldier");
			new_soldier.player_owner=player_owner;
			ds_list_delete(deck_owner.hand,ds_list_find_index(deck_owner.hand,id));
			instance_destroy();
		}
		else{
			y=startY;
			moving=false;
		}
	}
}
//}
>>>>>>> Stashed changes
	//make cost go down
//}
