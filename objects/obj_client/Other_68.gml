/// @description Insert description here
// You can write your code in this editor
if(ds_exists(async_load,ds_type_map)){
	if(!connected&&c_type!="host"){
		server_ip=ds_map_find_value(async_load,"ip");
		var read_buffer = ds_map_find_value(async_load,"buffer");
		buffer_seek(read_buffer,buffer_seek_start,0);
		var host_name = buffer_read(read_buffer,buffer_string);
		already_made=false;
		for(i=0; i<ds_list_size(join_btns); i++){
			prev_btn = ds_list_find_value(join_btns,i);
			if(prev_btn.host_ip==server_ip){
				show_debug_message("btn_ip: "+string(prev_btn.host_ip)+" server_ip: "+string(server_ip));
				already_made=true;
				break;
			}
		}
		if(!already_made){
			var read_buffer = ds_map_find_value(async_load,"buffer");
			buffer_seek(read_buffer,buffer_seek_start,0);
			var host_name = buffer_read(read_buffer,buffer_string);
			temp_join_btn = instance_create_layer(0,room_height*.3+(room_height*.1)*(ds_list_size(join_btns)),"Instances",obj_room_join_btn);
			temp_join_btn.host_name = host_name;
			temp_join_btn.host_ip = server_ip;
			ds_list_add(join_btns,temp_join_btn);
		}
	}
	else if(connected){
		e_id = ds_map_find_value(async_load, "id");
		if(e_id = client_socket){
			var read_buffer = ds_map_find_value(async_load,"buffer");
			buffer_seek(read_buffer,buffer_seek_start,0);
			var b_type = buffer_read(read_buffer,buffer_string);
			if(b_type="send_deck"){
				var buffer = buffer_create(256,buffer_grow,1);
				buffer_seek(buffer,buffer_seek_start,0);
				buffer_write(buffer,buffer_string,"my_deck");
				buffer_write(buffer,buffer_string,ds_map_find_value(global.selected_deck,"name"));
				card_list = ds_map_find_value(global.selected_deck,"card_list");
				ds_list_shuffle(card_list);
				buffer_write(buffer,buffer_u8,ds_list_size(card_list));
				for(i=0; i<ds_list_size(card_list); i++){
					buffer_write(buffer,buffer_string,ds_list_find_value(card_list,i));
				}
				network_send_packet(client_socket,buffer,buffer_tell(buffer));
				buffer_delete(buffer);
			}
			else if(b_type="enemy_deck"){
				deck_name = buffer_read(read_buffer,buffer_string);
				ds_map_clear(enemy_deck);
				ds_map_add(enemy_deck,"name",deck_name);
				card_list_size = buffer_read(read_buffer,buffer_u8);
				temp_list=ds_list_create();
				for(i=0;i<card_list_size;i++){
					ds_list_add(temp_list,buffer_read(read_buffer,buffer_string));
				}
				ds_map_add_list(enemy_deck,"card_list",temp_list);
				global.game_mode="multiplayer";
				room_goto(rm_battleground);
			}
			else if(b_type="card_hovered"||b_type="card_unhovered"||b_type="soldier_created"){
				var b_sender = buffer_read(read_buffer,buffer_string);
				if(b_sender!=obj_client.c_type){
					card_index_in_hand = buffer_read(read_buffer,buffer_u8);
					if(b_type="soldier_created"){
						mouseX = buffer_read(read_buffer,buffer_u16);
						mouseY = buffer_read(read_buffer,buffer_u16);
					}
					with(obj_deck){
						if(player_owner="enemy"){
							card = ds_list_find_value(hand,other.card_index_in_hand);
							if(!is_undefined(card)){
								if(b_type="card_hovered"){
									card.hovered=true;
								}
								else if(b_type="card_unhovered"){
									card.hovered=false;
									card.glow_opacity=0;
									card.glow_dimmer=false;
								}
								else if(b_type="soldier_created"){
									closest_space = instance_nearest(986-(other.mouseX-336),274-(other.mouseY-490),obj_space);
									new_soldier = instance_create_depth(closest_space.x,closest_space.y,-2,obj_soldier);
									new_soldier.sprite_index=get_sprite_from_card_name(card.card_name,"soldier");
									new_soldier.player_owner=player_owner;
									closest_space.enemyOccupying=true;
									closest_space.currentTroop=new_soldier;
									ds_list_delete(hand,other.card_index_in_hand);
									instance_destroy(card);
								}
							}
						}
					}
				}
			}
			else if(b_type="draw_card"){
				var b_sender = buffer_read(read_buffer,buffer_string);
				if(b_sender!=obj_client.c_type){
					with(obj_deck){
						if(player_owner="enemy"){
							event_perform(ev_mouse,ev_left_press);
						}
					}
				}
			}
			else if(b_type="soldier_move"){
				show_debug_message("recieved messaged");
				var b_sender = buffer_read(read_buffer,buffer_string);
				if(b_sender!=obj_client.c_type){
					show_debug_message("client_type is right");
					move_index = buffer_read(read_buffer,buffer_u16);
					soldier_x = buffer_read(read_buffer,buffer_u16);
					soldier_y = buffer_read(read_buffer,buffer_u16);
					soldier_space = instance_nearest(986-(soldier_x-336),274-(soldier_y-490),obj_space);
					soldier = soldier_space.currentTroop;
					if(!is_undefined(soldier)){
						if(move_index>soldier.move_index){
							show_debug_message("setting that mf x and y value");
							new_soldier_x = buffer_read(read_buffer,buffer_u16);
							new_soldier_y = buffer_read(read_buffer,buffer_u16);
							soldier.x=986-(new_soldier_x-336);
							soldier.y=274-(new_soldier_y-490);
							soldier.move_index++;
							soldier_space.currentTroop=noone;
						}
						else{
							show_debug_message("move index error? no way?");
						}
					}
					else{
						show_debug_message("soldier unrefined");
					}
				}
			}
		}
	}
}