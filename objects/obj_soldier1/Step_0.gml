if(global.phase == 1){
	home = instance_nearest(x,y,obj_space);
	leftMoves = startingLeftMoves;
	upMoves = startingUpMoves;
	sprite_index = sprite;
	selected = false;
}
sprite_index = sprite;
if(global.phase == 2 && selected){
		if(keyboard_check_pressed(vk_left) && leftMoves > 0){
			if(instance_nearest(x-150,y,obj_space).enemyOccupying){
				
			}
			else{
				x = instance_nearest(x-150,y,obj_space).x;
				leftMoves--;
			}
		}
		else if(keyboard_check_pressed(vk_right) && leftMoves > 0){
			if(instance_nearest(x+150,y,obj_space).enemyOccupying){
				
			}
			else{
				x = instance_nearest(x+150,y,obj_space).x;
				leftMoves--;
			}
		}
		else if(keyboard_check_pressed(vk_up) && upMoves > 0){
			if(instance_nearest(x,y-80,obj_space).enemyOccupying){
				
			}
			else{
				y = instance_nearest(x,y-80,obj_space).y;
				upMoves--;
			}
		}
		else if(keyboard_check_pressed(vk_down) && upMoves > 0){
			if(instance_nearest(x,y+80,obj_space).enemyOccupying){
				
			}
			else{
				y = instance_nearest(x,y+80,obj_space.y);
				upMoves--;
			}
		}
}