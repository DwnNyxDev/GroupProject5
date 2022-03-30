/// @description Insert description here
// You can write your code in this editor
draw_set_font(fnt_endor20);
if(global.gold < price){
	image_blend=make_color_rgb(50,50,50);
	draw_self();
	image_blend=c_white;
	draw_set_color(c_white);
	
}
else{
	draw_self();
}
draw_set_color(c_white);
draw_set_valign(-1);
draw_text(x, 560, "Price: "+string(price)+"\n" + string(5-cards_bought) + "/5");