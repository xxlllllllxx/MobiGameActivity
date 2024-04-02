var file = file_text_open_read("highscore.txt");

if (file != -1) {
    global.highscore = file_text_read_real(file);
    file_text_close(file);
}

room_restart();