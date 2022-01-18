if(hovering){
	draw_set_halign(fa_center);
	if(taken){
		if(rand==1){
			draw_text_color(x+110,y+210,@"The ___ zone has decided 
to triple all end-of-turn abilities
that trigger within it.",150,150,150,1,1);
		}
		else if(rand==2 || rand==3){
			draw_text_color(x+110,y+210,@"The ___ zone has decided 
to be neutral.",150,150,150,1,1);
		}
		else if(rand==4 || rand==5){
			draw_text_color(x+110,y+210,@"The ___ zone has decided
to double the EFFECTS buffs of
all SOLDIERS that enter it.",150,150,150,1,1);
		}
		else if(rand==6 || rand==7){
			draw_text_color(x+110,y+210,@"The ___ zone has decided 
to double the WEAPONS buffs of
all SOLDIERS that enter it.",150,150,150,1,1);
		}
		else if(rand==8 || rand==9){
			draw_text_color(x+110,y+210,@"The ___ zone has decided 
to kill any SOLDIERS that enter it.",150,150,150,1,1);
		}
		else{
			draw_text_color(x+110,y+210,@"The ___ zone has decided 
to reward whoever captures it with 1 point.",150,150,150,1,1);
		}
	}
	else{
		draw_text_color(x+110,y+210,@"The ___ zone gives a
random effect each game.",150,150,150,1,1);
	}
}
draw_self();