obj_game.win = true;

var file = file_text_open_write("level"+string(obj_game.level+1)+".txt");
file_text_write_real(file, 1);
file_text_close(file);

obj_game.alarm[0] = 1;