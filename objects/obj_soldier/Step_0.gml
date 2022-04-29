/// @description Insert description here
// You can write your code in this editor
if(name!=noone){
	sprite_index=get_sprite_from_card_name(name,"soldier");
}
if(global.phase == 1){
	vertMoves = startingVertMoves;
	horMoves = startingHorMoves;
	selected = false;
}
if(selected){
	if(keyboard_check_pressed(vk_left) || keyboard_check_pressed(ord("A"))){
		potential = instance_nearest(x-160,y,obj_space);
		if(horMoves > 0 && !potential.occupying){
			move_index++;
			if(global.game_mode = "multiplayer"&&obj_client.connected){
				var buffer = buffer_create(256,buffer_grow,1);
				buffer_seek(buffer,buffer_seek_start,0);
				buffer_write(buffer,buffer_string,"soldier_move");
				buffer_write(buffer,buffer_string,obj_client.c_type);
				buffer_write(buffer,buffer_u16,move_index);
				buffer_write(buffer,buffer_u16,current.x);
				buffer_write(buffer,buffer_u16,current.y);
				buffer_write(buffer,buffer_u16,potential.x);
				buffer_write(buffer,buffer_u16,potential.y);
				network_send_packet(obj_client.client_socket,buffer,buffer_tell(buffer));
				buffer_delete(buffer);
			}
			current.occupying = false;
			potential.occupying = true;
			current = potential;
			x = potential.x;
			horMoves--;
		}
		else if(potential.occupying){
			enemy = potential.currentTroop
			if(enemy!=noone&&enemy.owner = "enemy"){
				enemy.defense -= attack;
				if(enemy.defense <= 0){
					instance_destroy(enemy);
				}
				else{
					defense -= enemy.attack;
				}
				if(defense <= 0){
					instance_destroy();
				}
			}
		}
	}
	if(keyboard_check_pressed(vk_right) || keyboard_check_pressed(ord("D"))){
		potential = instance_nearest(x+160,y,obj_space);
		if(horMoves > 0 && !potential.occupying){
			move_index++;
			if(global.game_mode = "multiplayer"&&obj_client.connected){
				var buffer = buffer_create(256,buffer_grow,1);
				buffer_seek(buffer,buffer_seek_start,0);
				buffer_write(buffer,buffer_string,"soldier_move");
				buffer_write(buffer,buffer_string,obj_client.c_type);
				buffer_write(buffer,buffer_u16,move_index);
				buffer_write(buffer,buffer_u16,current.x);
				buffer_write(buffer,buffer_u16,current.y);
				buffer_write(buffer,buffer_u16,potential.x);
				buffer_write(buffer,buffer_u16,potential.y);
				network_send_packet(obj_client.client_socket,buffer,buffer_tell(buffer));
				buffer_delete(buffer);
			}
			current.occupying = false;
			potential.occupying = true;
			current = potential;
			x = potential.x;
			horMoves--;
		}
	}
	if(keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"))){
		potential = instance_nearest(x,y-80,obj_space);
		if(vertMoves > 0 && !potential.occupying){
			move_index++;
			if(global.game_mode = "multiplayer"&&obj_client.connected){
				var buffer = buffer_create(256,buffer_grow,1);
				buffer_seek(buffer,buffer_seek_start,0);
				buffer_write(buffer,buffer_string,"soldier_move");
				buffer_write(buffer,buffer_string,obj_client.c_type);
				buffer_write(buffer,buffer_u16,move_index);
				buffer_write(buffer,buffer_u16,current.x);
				buffer_write(buffer,buffer_u16,current.y);
				buffer_write(buffer,buffer_u16,potential.x);
				buffer_write(buffer,buffer_u16,potential.y);
				network_send_packet(obj_client.client_socket,buffer,buffer_tell(buffer));
				buffer_delete(buffer);
			}
			current.occupying = false;
			potential.occupying = true;
			current = potential;
			y = potential.y;
			vertMoves--;
		}
	}
	if(keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"))){
		potential = instance_nearest(x,y+80,obj_space);
		if(vertMoves > 0 && !potential.occupying){
			move_index++;
			if(global.game_mode = "multiplayer"&&obj_client.connected){
				var buffer = buffer_create(256,buffer_grow,1);
				buffer_seek(buffer,buffer_seek_start,0);
				buffer_write(buffer,buffer_string,"soldier_move");
				buffer_write(buffer,buffer_string,obj_client.c_type);
				buffer_write(buffer,buffer_u16,move_index);
				buffer_write(buffer,buffer_u16,current.x);
				buffer_write(buffer,buffer_u16,current.y);
				buffer_write(buffer,buffer_u16,potential.x);
				buffer_write(buffer,buffer_u16,potential.y);
				network_send_packet(obj_client.client_socket,buffer,buffer_tell(buffer));
				buffer_delete(buffer);
			}
			current.occupying = false;
			potential.occupying = true;
			current = potential;
			y = potential.y;
			vertMoves--;
		}
	}
}