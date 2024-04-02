sprite_index = spr_fire;
	if(obj_game.points <= 0){
		image_index = 1;
	} else {
		image_index = 0
	}
 
if(device_mouse_check_button(0, mb_left) && instance_exists(obj_player)  && bullet_not_fired){
		if (mouse_x > obj_fire.x && mouse_x < obj_fire.x + button_width &&
		    mouse_y > obj_fire.y && mouse_y < obj_fire.y + button_height) {
				//Bullet firing
				bullet_not_fired = false;
					if(obj_game.points >= 5){
						instance_create_layer(obj_player.x, obj_player.y, "Instances", obj_bullet);
						if(instance_exists(obj_cl_game)){
							if(obj_cl_game.rm_number == 1){
							} else {
								obj_game.points -= 5;
							}
						} else {
							obj_game.points -= 5;
						}
						
					}
			alarm[0] = 30;
	}
}