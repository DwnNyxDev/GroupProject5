/// @description Insert description here
// You can write your code in this editor
draw_self();
draw_set_alpha(.69)
draw_set_halign(fa_center)
draw_set_valign(fa_center)
draw_circle_color(x-64,bbox_bottom-32,32,c_red,c_red,false);
draw_circle_color(x,bbox_bottom-32,32,c_lime,c_lime,false);
draw_circle_color(x+64,bbox_bottom-32,32,c_aqua,c_aqua,false);
draw_set_font(fnt_endor)
draw_set_color(c_black)
draw_text(x-64,bbox_bottom-32,card_health);
draw_text(x,bbox_bottom-32,card_attack);
draw_text(x+64,bbox_bottom-32,card_turn);
draw_set_alpha(1)