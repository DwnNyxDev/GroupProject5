/// @description Insert description here
// You can write your code in this editor
if(name!=noone){
	sprite_index=get_sprite_from_card_name(name,"soldier");
}
if(global.phase == 1){
	upMoves = startingUpMoves;
	leftMoves = startingLeftMoves;
	selected = false;
}
if(selected){
	if(keyboard_check_pressed(vk_left) || keyboard_check_pressed(ord("A"))){
		potential = instance_nearest(x-160,y,obj_space);
		if(leftMoves > 0 && !potential.occupying){
			current.occupying = false;
			potential.occupying = true;
			current = potential;
			x = potential.x;
			leftMoves--;
		}
		else if(potential.occupying){
			enemy = potential.currentTroop
			if(enemy.owner = "enemy"){
				enemy.defense -= attack;
				if(enemy.defense <= 0){
					instance_destroy(enemy);
				}
				else{
					defense -= enemy.attack;
				}
				if(defense <= 0){
					instance_destroy();
				}
			}
		}
	}
	if(keyboard_check_pressed(vk_right) || keyboard_check_pressed(ord("D"))){
		potential = instance_nearest(x+160,y,obj_space);
		if(leftMoves > 0 && !potential.occupying){
			current.occupying = false;
			potential.occupying = true;
			current = potential;
			x = potential.x;
			leftMoves--;
		}
	}
	if(keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"))){
		potential = instance_nearest(x,y-80,obj_space);
		if(upMoves > 0 && !potential.occupying){
			current.occupying = false;
			potential.occupying = true;
			current = potential;
			y = potential.y;
			upMoves--;
		}
	}
	if(keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"))){
		potential = instance_nearest(x,y+80,obj_space);
		if(upMoves > 0 && !potential.occupying){
			current.occupying = false;
			potential.occupying = true;
			current = potential;
			y = potential.y;
			upMoves--;
		}
	}
}