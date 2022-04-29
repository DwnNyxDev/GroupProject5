
if(global.phase = 4){
	if(zone){
		if(occupying){
			if(instance_nearest(x,y,obj_soldier).player_owner == "me"){
				if(!counted){
					if(double){
						global.playerPoints+=2;
					}
					if(single){
						global.playerPoints++;
					}
					if(half){
						global.playerPoints+=.5;
					}
					if(temp){
						
					}
					if(randomm){
						if(randVal == 0){
							
						}
						else if(randVal == 1){
							
						}
						else if(randVal == 2){
							
						}
						else if(randVal == 3){
							
						}
						else if(randVal == 4){
							
						}
						else{
							
						}
					}
					counted = true;
				}
			}
		}
	}
}
else{
	counted = false;
}
