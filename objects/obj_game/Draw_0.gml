if(room == rm_battleground){
	draw_text(100,room_height*.9,"Phase: "+ string(global.phase));
	draw_text(100,room_height*.9+50,"PlayerPoints: "+global.playerPoints);
	draw_text(100,room_height*.9+100,"Money: "+global.money);
}
else if(room == rm_store){
	draw_sprite(spr_goldCoin,0,room_width*0.05,room_height*0.1);
	draw_set_font(fnt_endor);
	draw_set_color(c_black);
	draw_text(room_width*0.11, room_height*0.08, global.gold);
}
else if(room=rm_deck_editor){
	deck_name = ds_map_find_value(global.selected_deck,"name");
	draw_text(room_width/2,room_height*.1,deck_name);
}
else if(room=rm_menu){
	draw_set_font(fnt_endor);
	draw_set_color(c_silver);
	draw_text(room_width-15*string_length(global.player_name),room_height*.1,global.player_name);
}
