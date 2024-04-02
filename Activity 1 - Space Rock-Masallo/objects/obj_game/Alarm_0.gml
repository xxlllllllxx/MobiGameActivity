game_over = true;

if (points > global.highscore) {
    global.highscore = points;
}

if(points > 0){
	audio_play_sound(snd_game_calculation, 1, false);
	var file = file_text_open_write("highscore.txt");
	file_text_write_real(file, global.highscore);
	file_text_close(file);

	alarm[1] = 220;
} else {
	alarm[1] = 120;
}
