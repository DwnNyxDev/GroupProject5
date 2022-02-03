// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function draw_text_outlined(text_x,text_y,outline_size,outline_color,text_color,text){
	//Outline  
	draw_set_color(outline_color);  
	draw_text(text_x+outline_size, text_y+outline_size, text);  
	draw_text(text_x-outline_size, text_y-outline_size, text);  
	draw_text(text_x,   text_y+outline_size, text);  
	draw_text(text_x+outline_size,   text_y, text);  
	draw_text(text_x,   text_y-outline_size, text);  
	draw_text(text_x-outline_size,   text_y, text);  
	draw_text(text_x-outline_size, text_y+outline_size, text);  
	draw_text(text_x+outline_size, text_y-outline_size, text);  
  
	//Text  
	draw_set_color(text_color);  
	draw_text(text_x, text_y, text);  
}