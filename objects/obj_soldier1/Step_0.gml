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
			if(instance_nearest(x-150,y,obj_space).currentTroop1 == noone){
				instance_nearest(x-150,y,obj_space).currentTroop1 = instance_nearest(x,y,obj_soldier1);
			}
			else if(instance_nearest(x-150,y,obj_space).currentTroop2 == noone){
				instance_nearest(x-150,y,obj_space).currentTroop2 = instance_nearest(x,y,obj_soldier1);
			}
			else if(instance_nearest(x-150,y,obj_space).currentTroop3 == noone){
				instance_nearest(x-150,y,obj_space).currentTroop3 = instance_nearest(x,y,obj_soldier1);
			}
			else if(instance_nearest(x-150,y,obj_space).currentTroop4 == noone){
				instance_nearest(x-150,y,obj_space).currentTroop4 = instance_nearest(x,y,obj_soldier1);
			}
			else if(instance_nearest(x-150,y,obj_space).currentTroop5 == noone){
				instance_nearest(x-150,y,obj_space).currentTroop5 = instance_nearest(x,y,obj_soldier1);
			}
			leftMoves--;
		}
	}
	else if(keyboard_check_pressed(vk_right) && leftMoves > 0){
		if(instance_nearest(x+150,y,obj_space).enemyOccupying){
				
		}
		else{
			x = instance_nearest(x+150,y,obj_space).x;
			if(instance_nearest(x+150,y,obj_space).currentTroop1 == noone){
				instance_nearest(x+150,y,obj_space).currentTroop1 = instance_nearest(x,y,obj_soldier1);
			}
			else if(instance_nearest(x+150,y,obj_space).currentTroop2 == noone){
				instance_nearest(x+150,y,obj_space).currentTroop2 = instance_nearest(x,y,obj_soldier1);
			}
			else if(instance_nearest(x+150,y,obj_space).currentTroop3 == noone){
				instance_nearest(x+150,y,obj_space).currentTroop3 = instance_nearest(x,y,obj_soldier1);
			}
			else if(instance_nearest(x+150,y,obj_space).currentTroop4 == noone){
				instance_nearest(x+150,y,obj_space).currentTroop4 = instance_nearest(x,y,obj_soldier1);
			}
			else if(instance_nearest(x+150,y,obj_space).currentTroop5 == noone){
				instance_nearest(x+150,y,obj_space).currentTroop5 = instance_nearest(x,y,obj_soldier1);
			}
			leftMoves--;
		}
	}
	else if(keyboard_check_pressed(vk_up) && upMoves > 0){
		if(instance_nearest(x,y-80,obj_space).enemyOccupying){
			if(instance_nearest(x,y-80,obj_space).currentTroop1 != noone){
				instance_nearest(x,y-80,obj_space).currentTroop1.defense -= attack;
				defense -= instance_nearest(x,y-80,obj_space).currentTroop1.attack;
				if(defense <= 0){
					instance_destroy();
				}
				if(instance_nearest(x,y-80,obj_space).currentTroop1.defense <= 0){
					instance_destroy(instance_nearest(x,y-80,obj_space).currentTroop1);
				}
			}
			if(instance_nearest(x,y-80,obj_space).currentTroop2 != noone){
				instance_nearest(x,y-80,obj_space).currentTroop2.defense -= attack;
				defense -= instance_nearest(x,y-80,obj_space).currentTroop2.attack;
				if(defense <= 0){
					instance_destroy();
				}
				if(instance_nearest(x,y-80,obj_space).currentTroop2.defense <= 0){
					instance_destroy(instance_nearest(x,y-80,obj_space).currentTroop2);
				}
			}
			if(instance_nearest(x,y-80,obj_space).currentTroop3 != noone){
				instance_nearest(x,y-80,obj_space).currentTroop3.defense -= attack;
				defense -= instance_nearest(x,y-80,obj_space).currentTroop3.attack;
				if(defense <= 0){
					instance_destroy();
				}
				if(instance_nearest(x,y-80,obj_space).currentTroop3.defense <= 0){
					instance_destroy(instance_nearest(x,y-80,obj_space).currentTroop3);
				}
			}
			if(instance_nearest(x,y-80,obj_space).currentTroop4 != noone){
				instance_nearest(x,y-80,obj_space).currentTroop4.defense -= attack;
				defense -= instance_nearest(x,y-80,obj_space).currentTroop4.attack;
				if(defense <= 0){
					instance_destroy();
				}
				if(instance_nearest(x,y-80,obj_space).currentTroop4.defense <= 0){
					instance_destroy(instance_nearest(x,y-80,obj_space).currentTroop4);
				}
			}
			if(instance_nearest(x,y-80,obj_space).currentTroop5 != noone){
				instance_nearest(x,y-80,obj_space).currentTroop5.defense -= attack;
				defense -= instance_nearest(x,y-80,obj_space).currentTroop5.attack;
				if(defense <= 0){
					instance_destroy();
				}
				if(instance_nearest(x,y-80,obj_space).currentTroop5.defense <= 0){
					instance_destroy(instance_nearest(x,y-80,obj_space).currentTroop5);
				}
			}
		}
		else{
			y = instance_nearest(x,y-80,obj_space).y;
			if(instance_nearest(x,y-80,obj_space).currentTroop1 == noone){
				instance_nearest(x,y-80,obj_space).currentTroop1 = instance_nearest(x,y,obj_soldier1);
			}
			else if(instance_nearest(x,y-80,obj_space).currentTroop2 == noone){
				instance_nearest(x,y-80,obj_space).currentTroop2 = instance_nearest(x,y,obj_soldier1);
			}
			else if(instance_nearest(x,y-80,obj_space).currentTroop3 == noone){
				instance_nearest(x,y-80,obj_space).currentTroop3 = instance_nearest(x,y,obj_soldier1);
			}
			else if(instance_nearest(x,y-80,obj_space).currentTroop4 == noone){
				instance_nearest(x,y-80,obj_space).currentTroop4 = instance_nearest(x,y,obj_soldier1);
			}
			else if(instance_nearest(x,y-80,obj_space).currentTroop5 == noone){
				instance_nearest(x,y-80,obj_space).currentTroop5 = instance_nearest(x,y,obj_soldier1);
			}
			upMoves--;
		}
	}
	else if(keyboard_check_pressed(vk_down) && upMoves > 0){
		if(instance_nearest(x,y+80,obj_space).enemyOccupying){
				
		}
		else{
			y = instance_nearest(x,y+80,obj_space.y);
			if(instance_nearest(x,y+80,obj_space).currentTroop1 == noone){
				instance_nearest(x,y+80,obj_space).currentTroop1 = instance_nearest(x,y,obj_soldier1);
			}
			else if(instance_nearest(x,y+80,obj_space).currentTroop2 == noone){
				instance_nearest(x,y+80,obj_space).currentTroop2 = instance_nearest(x,y,obj_soldier1);
			}
			else if(instance_nearest(x,y+80,obj_space).currentTroop3 == noone){
				instance_nearest(x,y+80,obj_space).currentTroop3 = instance_nearest(x,y,obj_soldier1);
			}
			else if(instance_nearest(x,y+80,obj_space).currentTroop4 == noone){
				instance_nearest(x,y+80,obj_space).currentTroop4 = instance_nearest(x,y,obj_soldier1);
			}
			else if(instance_nearest(x,y+80,obj_space).currentTroop5 == noone){
				instance_nearest(x,y+80,obj_space).currentTroop5 = instance_nearest(x,y,obj_soldier1);
			}
			upMoves--;
		}
	}
}