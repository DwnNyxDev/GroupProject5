/// @description Insert description here
// You can write your code in this editor
draw_self();
draw_set_halign(fa_center);
draw_set_color(c_aqua);
draw_text(x,y,"Add to Deck\n"+string(ds_list_size(ds_map_find_value(global.selected_deck,"card_list")))+"/60");
draw_set_color(c_black);