if(instance_exists(obj_game)){
	if((obj_game.boosted && (obj_game.boost_selection % 3) == 0) ){
		effect_create_below(ef_spark, x, y, 1, c_aqua);
		audio_stop_sound(snd_spark);
		audio_play_sound(snd_spark, 1, false);
	} else if(obj_game.invincible || (obj_game.boosted && (obj_game.boost_selection % 3) == 2)){
		if(obj_game.invincible){
			with(other){
				effect_create_below(ef_spark, x, y, 1, c_white);
				audio_play_sound(snd_spark, 1, false);
			}
		} else {
			with(other){
				effect_create_below(ef_firework, x, y, 1, c_fuchsia);
				audio_play_sound(snd_destroy_rock, 1, false);
			}
		}
		obj_game.points += obj_game.point_increment * 2;
		instance_destroy(other);
	
	} else {
		effect_create_above(ef_firework, x, y, 1, c_blue);
		audio_stop_sound(obj_game.sound_track_list[obj_game.game_level % 5]);
		audio_play_sound(snd_game_over, 1, false); 
		instance_destroy();
		obj_game.alarm[0] = 20;
	}
}