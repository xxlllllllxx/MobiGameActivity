
if(instance_exists(obj_s_player)){
	if(obj_start.classic && !obj_start.classic_disabled){
		obj_s_player.speed = 30;
	
	}

	if(obj_start.infinite && !obj_start.infinite_disabled){
		obj_s_player.speed = 30;
	}

	if(obj_start.back){
		obj_s_player.speed = -30;
		obj_start.alarm[0] = 10;
	}
}