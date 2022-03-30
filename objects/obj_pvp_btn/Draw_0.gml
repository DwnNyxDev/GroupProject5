/// @description Insert description here
// You can write your code in this editor
if(btn_type="create"){
	if(hovered){
		image_blend=make_color_rgb(0,200,0);
	}
	else{
		image_blend=make_color_rgb(0,150,0);
	}
	draw_self();
	draw_text(x,y,"Create Room");
}
else if(btn_type="join"){
	if(hovered){
		image_blend=make_color_rgb(200,0,0);
	}
	else{
		image_blend=make_color_rgb(150,0,0);
	}
	draw_self();
	draw_text(x,y,"Join Room");
}