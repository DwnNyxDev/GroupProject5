/// @description Insert description here
// You can write your code in this editor
if(global.gold < price || cards_bought >=5){
	image_blend=make_color_rgb(50,50,50);
	draw_self();
	image_blend=c_white;
	draw_set_color(c_white);
	draw_text(x-20, 560, "This card can no longer be bought.");
	draw_text(x-20, 620, "Wait for the shop to reset.");
}
else{
<<<<<<< Updated upstream
	draw_self();
	draw_set_color(c_white);
	draw_text(x, 560, "This card can be bought! " + string(cards_bought) + "/5");
}
=======
	if(sprite_index!=noone){
		draw_self();
	}
}
draw_set_color(c_white);
draw_set_valign(-1);
draw_text(x, 560, "Price: "+string(price)+"\n" + string(5-cards_bought) + "/5");
>>>>>>> Stashed changes
