instance_destroy();
if(instance_exists(obj_start)){
	if(obj_start.infinite){
		obj_start.alarm[1] = 1;
	}
	if(obj_start.classic){
		obj_start.alarm[2] = 1;
	}
}