if(obj_game.boost_selection % 3 == 0){
	sprite_index = spr_boost_load_blue;
} else if(obj_game.boost_selection % 3 == 1){
	sprite_index = spr_boost_load_green;
} else {
	sprite_index = spr_boost_load_fushia;
}

if(obj_game.boosted){
	image_speed = -2;
} else {
	if(image_index <= 8){
		image_speed = 1;
	} else {
		image_speed = 0;
	}
}
if(instance_exists(obj_cl_game)){
	if(obj_cl_game.rm_number == 3){
		image_index = 8;
		image_speed = 0;
	}
}
if(instance_exists(obj_cl_game)){
	if(obj_cl_game.rm_number == 4 && image_speed != 0){
		image_speed += 1;
	}
}
load_level = image_index;
image_speed_num = image_speed;
