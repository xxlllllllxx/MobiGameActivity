if(instance_exists(obj_s_player)){
	if(obj_s_player.speed == 0){
		if(var_id = 1){
			if(obj_start.classic_disabled){
				audio_play_sound(snd_spark, 1, false);
				sprite_index = spr_disabled_button;
			} else {
				audio_play_sound(snd_boost_pick, 1, false);
				sprite_index = spr_hover_button;
			}
			obj_start.classic = true;
			obj_start.infinite = false;
			obj_start.back = false;
			obj_s_player.y = 325;
			obj_s_player.x = 934;
			obj_s_player.image_angle = 0;
		} else if(var_id = 2) {
			if(obj_start.infinite_disabled){
				audio_play_sound(snd_spark, 1, false);
				sprite_index = spr_disabled_button;
			} else {
				audio_play_sound(snd_boost_pick, 1, false);
				sprite_index = spr_hover_button;
			}
			obj_start.classic = false;
			obj_start.infinite = true;
			obj_start.back = false;
			obj_s_player.y = 444;
			obj_s_player.x = 934;
			obj_s_player.image_angle = 0;
		} else if(var_id = 3) {
			sprite_index = spr_hover_button;
			obj_start.classic = false;
			obj_start.infinite = false;
			obj_start.back = true;
			obj_s_player.y = 577;
			obj_s_player.x = 564;
			obj_s_player.image_angle = 180;
		}
	}
}




