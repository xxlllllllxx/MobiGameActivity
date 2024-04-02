//Instantiate the bullet with speed and direction
 if(obj_game.boosted && (obj_game.boost_selection % 3) == 1){
	image_xscale += 2;
	image_yscale += 2;
	speed = obj_game.bullet_speed * 3;
	obj_player.alarm[1] = 1;
 } else {
	speed = obj_game.bullet_speed;
	
 }
direction = obj_player.image_angle;
audio_play_sound(snd_fire, 0.8, false);

pierce_count = 0;