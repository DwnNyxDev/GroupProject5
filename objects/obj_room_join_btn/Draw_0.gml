/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_blue);
draw_set_halign(-1);
draw_set_valign(-1);
draw_rectangle(x,y,room_width,y+room_height*.1,true);
draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_set_color(c_black);
draw_set_font(fnt_arial20);
draw_text(room_width/2,y+room_height*.03,host_name+"'s Room");
draw_set_font(-1);
draw_text(room_width/2,y+room_height*.07,host_ip);


