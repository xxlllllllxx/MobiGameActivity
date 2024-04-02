
if(instance_exists(obj_game)){
	obj_game.points = 50;
	obj_game.game_over = false;

	obj_game.game_start = true;
	obj_game.game_level = 1;
	obj_game.next_level_points = 200;

	obj_game.player_speed = 3;
	obj_game.player_rotation_speed = 3;

	obj_game.bullet_speed = 10;

	obj_game.rock_big_speed = 1;
	obj_game.rock_small_speed = 2;

	obj_game.rock_count = 12;

	obj_game.point_increment = 10;

	obj_game.up = false;
	obj_game.down = false;
	obj_game.left = false;
	obj_game.right = false;
	score_countdown = 0;

	var file = file_text_open_read("highscore.txt");
	if (file != -1) {
	    global.highscore = file_text_read_real(file);
	    file_text_close(file);
	}

	obj_game.alarm[2] = 150;
}