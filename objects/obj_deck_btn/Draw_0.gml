/// @description Insert description here
// You can write your code in this editor
if(!selected){
	image_blend = c_gray;
	draw_self();
	image_blend = c_white;
}
else{
	image_blend = c_white;
	draw_self();
	draw_set_font(fnt_endor);
	draw_set_color(c_black);
	draw_text_outlined(x,bbox_bottom+30,3,make_color_rgb(145,222,157),c_black,"Deck Editor");
	draw_set_font(-1);
}