 if(!instance_exists(obj_game)){
	instance_destroy(obj_player);
}
if(win || lose){
	instance_destroy(obj_player);
} else {

if(level == 1){
	if(!instance_exists(obj_player) && room == room_empty){
		instance_create_layer(368, 608 ,"Instances", obj_player);
	}
	if(!instance_exists(obj_park) && room == room_t_left){
		instance_create_layer(656, 176 ,"Instances", obj_park);
	}
}

if(level == 2){
	if(!instance_exists(obj_player) && room == room_empty){
		instance_create_layer(368, 608 ,"Instances", obj_player);
	}
	if(!instance_exists(obj_park) && room == room_t){
		instance_create_layer(592, 400 ,"Instances", obj_park);
	}
}

if(level == 3){
	if(!instance_exists(obj_player) && room_t_left){
		instance_create_layer(464, 416 ,"Instances", obj_player);
	}
	if(!instance_exists(obj_park) && room == room_t_left){
		instance_create_layer(656, 176 ,"Instances", obj_park);
	}
}

if(level == 4){
	if(!instance_exists(obj_player) && room == room_hori){
		instance_create_layer(1136,128 ,"Instances", obj_player);
	}
	
	if(!instance_exists(obj_park) && room == room_t){
		instance_create_layer(592, 400 ,"Instances", obj_park);
	}
}

if(level == 5){
	if(!instance_exists(obj_player) && room == room_vert){
		instance_create_layer(368, 496,"Instances", obj_player);
	}
	
	if(!instance_exists(obj_park) && room == room_vert && obj_player.room_number == 2){
		instance_create_layer(688, 288 ,"Instances", obj_park);
	}
}
}

if((win || lose) && !instance_exists(obj_win)){
	instance_create_layer(0, 0, "Instances", obj_win);
}