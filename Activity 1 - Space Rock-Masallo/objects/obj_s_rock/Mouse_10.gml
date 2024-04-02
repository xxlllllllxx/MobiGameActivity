
if(instance_exists(obj_classic_select)){
	if(unlocked){
		audio_play_sound(snd_boost_pick, 1, false);
		obj_classic_select.open = true;
	} else {
		audio_play_sound(snd_spark, 1, false);
		obj_classic_select.open = false;
	}
	if(rock_id == 1){
		obj_s_player.image_angle = 175;
	}
	if(rock_id == 2){
		obj_s_player.image_angle = 135;
	}
	if(rock_id == 3){
		obj_s_player.image_angle = 90;
	}
	if(rock_id == 4){
		obj_s_player.image_angle = 45;
	}
	if(rock_id == 5){
		obj_s_player.image_angle = 5;
	}
}