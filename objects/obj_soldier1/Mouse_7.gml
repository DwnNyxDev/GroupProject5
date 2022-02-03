moving=false;
if(global.phase == 2 && moves>0){
	if(instance_nearest(x,y,obj_space) == home.left){
		x = instance_nearest(x,y,obj_space).x;
		y = instance_nearest(x,y,obj_space).y;
		moves--;
	}
	else if(instance_nearest(x,y,obj_space) == home.right){
		x = instance_nearest(x,y,obj_space).x;
		y = instance_nearest(x,y,obj_space).y;
		moves--;
	}
	else if(instance_nearest(x,y,obj_space) == home.up){
		x = instance_nearest(x,y,obj_space).x;
		y = instance_nearest(x,y,obj_space).y;
		moves--;
	}
	else if(instance_nearest(x,y,obj_space) == home.down){
		x = instance_nearest(x,y,obj_space).x;
		y = instance_nearest(x,y,obj_space).y;
		moves--;
	}
	else if(instance_nearest(x,y,obj_space) == home.upLeft){
		x = instance_nearest(x,y,obj_space).x;
		y = instance_nearest(x,y,obj_space).y;
		moves--;
	}
	else if(instance_nearest(x,y,obj_space) == home.upRight){
		x = instance_nearest(x,y,obj_space).x;
		y = instance_nearest(x,y,obj_space).y;
		moves--;
	}
	else if(instance_nearest(x,y,obj_space) == home.downLeft){
		x = instance_nearest(x,y,obj_space).x;
		y = instance_nearest(x,y,obj_space).y;
		moves--;
	}
	else if(instance_nearest(x,y,obj_space) == home.downRight){
		x = instance_nearest(x,y,obj_space).x;
		y = instance_nearest(x,y,obj_space).y;
		moves--;
	}
	else{
		x = lastX;
		y = lastY;
	}
	lastX = x;
	lastY = y;
}
else{
	x = lastX;
	y = lastY;
}
sprite_index = spr_soldier1;
global.movingTroop = false;
