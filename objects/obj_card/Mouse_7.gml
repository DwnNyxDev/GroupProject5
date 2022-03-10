//if on battlefield and you have enough
if(room=rm_battleground){
	instance_create_depth(instance_nearest(mouse_x,mouse_y,obj_space).x,instance_nearest(mouse_x,mouse_y,obj_space).y,-2,card_object);
}
	//make cost go down
//}