draw_text(100,100,global.phase);

if(room == rm_store){
	draw_sprite(spr_goldCoin,0,room_width*0.05,room_height*0.1);
	draw_set_font(fnt_endor);
	draw_set_color(c_black);
	draw_text(room_width*0.11, room_height*0.08, global.gold);
	draw_set_color(c_aqua);
	//draw_text(.x, obj_card.y +150, "Price: 50");
	draw_sprite(card_display, 0, room_width/3, room_height/3);
	
}