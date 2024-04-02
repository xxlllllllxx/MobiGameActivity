move_wrap(true, true, 50);
	if(instance_exists(obj_game)){
	if(obj_game.up){
		motion_set(0, 0);
		motion_add(image_angle, obj_game.player_speed);
	}
	if(obj_game.down){
		motion_set(0, 0);
		motion_add(image_angle, - obj_game.player_speed);
	}
	if(obj_game.left){
		if(obj_game.boosted){
			image_angle += obj_game.player_rotation_speed;
		}
		image_angle += obj_game.player_rotation_speed;
	}
	if(obj_game.right){
		if(obj_game.boosted){
			image_angle -= obj_game.player_rotation_speed;
		}
		image_angle -= obj_game.player_rotation_speed; 
	}

	sprite_index = spr_player;
	if(obj_game.boosted){
		image_index = (obj_game.boost_selection % 3) + 1;
	} else {
		image_index = 0;
	}

	if(obj_game.invincible){
		alarm[0] = 1;
	} else {
		visible = true;
	}
}