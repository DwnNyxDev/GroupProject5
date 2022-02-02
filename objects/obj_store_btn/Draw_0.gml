/// @description Insert description here
// You can write your code in this editor
if(!selected){
	image_blend = c_gray;
	draw_self();
	image_blend = c_white;
}
else{
	draw_self();
	draw_set_font(fnt_endor);
	draw_text_outlined(x,bbox_bottom+30,3,make_color_rgb(3,151,225),make_color_rgb(94,248,196),"Card Store");
	draw_set_font(-1);
}