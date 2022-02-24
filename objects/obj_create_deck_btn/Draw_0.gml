/// @description Insert description here
// You can write your code in this editor
if(!clicked){
	draw_self();
}
else{
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);
	draw_set_font(fnt_endor);
	draw_text(x,y,deck_name);
	draw_line_width(x-300,y+20,x+300,y+20,5)
}