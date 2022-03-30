/// @description Insert description here
// You can write your code in this editor
if(btn_type="back_room"){
	if(room=rm_deck_selector||room=rm_store||room=rm_battleground||room=rm_pvp_setup){
		room_goto(rm_menu);
		if(room=rm_pvp_setup){
			instance_destroy(obj_client);
			instance_destroy(obj_server);
		}
	}
	else if(room=rm_deck_editor){
		room_goto(rm_deck_selector);
	}
}