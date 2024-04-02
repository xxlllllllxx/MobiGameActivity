
if(sprite_index == spr_rock_big){
	speed = random(obj_game.rock_big_speed);
} else {
	speed = random(obj_game.rock_small_speed);
}

direction = random(360);
image_angle = random(360);

pierce_count = 0;