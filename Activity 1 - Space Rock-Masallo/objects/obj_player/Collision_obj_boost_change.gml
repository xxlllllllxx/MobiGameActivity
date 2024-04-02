if(instance_exists(obj_game)){
	audio_play_sound(snd_boost_pick, 1, false); 
	with (other){
		color_boost_effect = c_aqua;

		if((obj_game.boost_selection + 1) % 3 == 0){
			color_boost_effect = c_aqua;
		} else if((obj_game.boost_selection + 1) % 3 == 1) {
			color_boost_effect = c_green;
		} else {
			color_boost_effect = c_fuchsia;
		}
		effect_create_below(ef_firework, x, y, 1, color_boost_effect);
		instance_destroy();
		obj_game.boost_selection = (obj_game.boost_selection % 3) + 1;
	}

	obj_game.alarm[3] =  obj_game.boost_appearance;
	obj_game.invincible = true;
	obj_game.alarm[4] = obj_game.invincibility;
}