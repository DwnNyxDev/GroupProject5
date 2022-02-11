/// @description Insert description here
// You can write your code in this editor
if(!hovered){
	draw_sprite_ext(spr_btn_outline,0,x,y,1,1,0,outline_color,1);
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);
	if(btn_type="back_room"){
		draw_text_color(x,y,"<--",fill_color,fill_color,fill_color,fill_color,1);
	}
}
else if(hovered){
	draw_sprite_ext(spr_btn_filled,0,x,y,1,1,0,fill_color,1);
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);
	if(btn_type="back_room"){
		draw_text_color(x,y,"<--",outline_color,outline_color,outline_color,outline_color,1);
	}
}