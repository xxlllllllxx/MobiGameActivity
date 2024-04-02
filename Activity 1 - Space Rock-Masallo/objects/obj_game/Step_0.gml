if(keyboard_check(vk_escape)){
	room_goto(rm_start);
}

if(instance_exists(obj_cl_game)){
if(obj_cl_game.rm_number == 1){
	if(points >= 200){
		global.cl_state_2 = true;
		obj_cl_game.objective_finished = true;
		file = file_text_open_write("classic2.txt");
		file_text_write_real(file, global.cl_state_2);
		file_text_close(file);
	}
}

if(obj_cl_game.rm_number == 2){
	if(points >= 400){
		global.cl_state_3 = 1;
		obj_cl_game.objective_finished = true;
		file = file_text_open_write("classic3.txt");
		file_text_write_real(file, global.cl_state_3);
		file_text_close(file);
	}
}

if(obj_cl_game.rm_number == 3){
	if(points >= 600){
		global.cl_state_4 = 1;
		file = file_text_open_write("classic4.txt");
		file_text_write_real(file, global.cl_state_4);
		file_text_close(file);
		obj_cl_game.objective_finished = true;
	}
}

if(obj_cl_game.rm_number == 4){
	if(points >= 800){
		global.cl_state_5 = 1;
		file = file_text_open_write("classic5.txt");
		file_text_write_real(file, global.cl_state_5);
		file_text_close(file);
		obj_cl_game.objective_finished = true;
	}
}

if(obj_cl_game.rm_number == 5){
	if(points >= 1000){
		global.infinite = 1;
		file = file_text_open_write("infinite.txt");
		file_text_write_real(file, global.infinite);
		file_text_close(file);
		obj_cl_game.objective_finished = true;
	}
}
}

if(points > next_level_points){
	//GOTO next level
	game_start = true;
	next_level_points += 200;
	game_level++;
	audio_play_sound(snd_boost_pick, 1, false); 
	player_speed += 0.2;
	player_rotation_speed -= 0.2;

	bullet_speed += 1;

	rock_big_speed += 1;
	rock_small_speed += 2;
	
	boost_appearance += 100;
	
	point_increment += 5;
	
	rock_count += 0.5;

	alarm[2] = 150;
}

if(game_over){
	if(score_countdown <= points){
		score_countdown += round(points/100);
	}
}