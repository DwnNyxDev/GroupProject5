//if on battlefield and you have enough
if(room=rm_battleground){
	if(card_name = "Human Low Knight"){
		card_object = obj_lowKnight;
	}
	new_soldier = instance_create_depth(instance_nearest(mouse_x,mouse_y,obj_space).x,instance_nearest(mouse_x,mouse_y,obj_space).y,-2,card_object);
}
	//make cost go down
//}