/// @description Insert description here
// You can write your code in this editor
draw_set_halign(fa_center);
	draw_set_valign(fa_center);
	draw_set_font(fnt_arial20);
	if(user_name == "What is your user name?"){
		draw_set_color(c_ltgray);
	}
	else{
		draw_set_color(c_black);
	}
	draw_text(x,y,user_name);
	draw_set_color(c_black);
	draw_line_width(x-300,y+20,x+300,y+20,5)
