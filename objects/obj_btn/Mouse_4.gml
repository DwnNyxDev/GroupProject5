/// @description Insert description here
// You can write your code in this editor
if(btn_type="back_room"){
<<<<<<< Updated upstream
	if(room=rm_deck_editor){
=======
	if(room=rm_deck_selector||room=rm_store||room=rm_battleground){
>>>>>>> Stashed changes
		room_goto(rm_menu);
	}
	else if(room=rm_deck_editor){
		room_goto(rm_deck_selector);
	}
}