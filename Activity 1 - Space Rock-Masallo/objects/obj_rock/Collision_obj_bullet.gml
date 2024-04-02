//If the bullet collided with this rock
move_wrap(true, true, 200);
//for infinite
if(instance_exists(obj_game)){
	if(!obj_game.game_over){
		 if(obj_game.boosted && (obj_game.boost_selection % 3) == 1){
		
		 } else {
			instance_destroy(other);
		 }

		effect_create_above(ef_firework, x, y, 1, c_white);

		collision_angle = point_direction(other.x, other.y, x, y);
	
		big_rock_direction = collision_angle + 90;

		small_rock_direction = collision_angle + 270;

		direction = collision_angle;

		if(sprite_index == spr_rock_big){
			sprite_index = spr_rock_small;
	
			small = instance_copy(true);
			small.direction = small_rock_direction;
			audio_play_sound(snd_destroy_rock, 1, false);
	
			obj_game.points += obj_game.point_increment * 2;
	
		} else if (instance_number(obj_rock) < obj_game.rock_count){
			instance_destroy();
			obj_game.alarm[5] = 1;
			audio_play_sound(snd_destroy_rock_small, 1, false);
			obj_game.points += obj_game.point_increment;
		} else {
			audio_play_sound(snd_destroy_rock_small, 1, false);
			instance_destroy();
			obj_game.points += obj_game.point_increment;
		}
	}
}