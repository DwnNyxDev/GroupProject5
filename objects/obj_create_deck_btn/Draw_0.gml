/// @description Insert description here
// You can write your code in this editor
if(!clicked){
	draw_self();
}
else{
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);
	draw_set_font(fnt_arial20);
	if(deck_name = "What is the name of your deck?"){
		draw_set_color(c_ltgray);
	}
	else{
		draw_set_color(c_black);
	}
	draw_text(x,y,deck_name);
	draw_set_color(c_black);
	draw_line_width(x-300,y+20,x+300,y+20,5)
}