/*
if file_exists("highscore.txt") {
    file_delete("highscore.txt");
}
if file_exists("infinite.txt") {
    file_delete("infinite.txt");
}
if file_exists("classic1.txt") {
    file_delete("classic1.txt");
}
if file_exists("classic2.txt") {
    file_delete("classic2.txt");
}
if file_exists("classic3.txt") {
    file_delete("classic3.txt");
}
if file_exists("classic4.txt") {
    file_delete("classic4.txt");
}
if file_exists("classic5.txt") {
    file_delete("classic5.txt");
}*/




var file = file_text_open_read("highscore.txt");
if (file != -1) {
    global.highscore = file_text_read_real(file);
    file_text_close(file);
} else {
	global.highscore =0;
}
file = file_text_open_read("infinite.txt");
if (file != -1) {
    global.infinite = file_text_read_real(file);
    file_text_close(file);
} else {
	global.infinite = 0;
}

audio_stop_all();
audio_play_sound(snd_ambient, 1, true);
classic_disabled = false;
classic = true;
if(global.infinite == 1){
	infinite_disabled = false;
} else {
	infinite_disabled = true;
}
infinite = false;
back = false;

file = file_text_open_read("classic1.txt");
if (file != -1) {
    global.cl_state_1 = file_text_read_real(file);
    file_text_close(file);
} else {
	global.cl_state_1 = 1;
}
file = file_text_open_read("classic2.txt");
if (file != -1) {
    global.cl_state_2 = file_text_read_real(file);
    file_text_close(file);
} else {
	global.cl_state_2 = 0;
}
file = file_text_open_read("classic3.txt");
if (file != -1) {
    global.cl_state_3 = file_text_read_real(file);
    file_text_close(file);
} else {
	global.cl_state_3 = 0;
}
file = file_text_open_read("classic4.txt");
if (file != -1) {
    global.cl_state_4 = file_text_read_real(file);
    file_text_close(file);
} else {
	global.cl_state_4 = 0;
}
file = file_text_open_read("classic5.txt");
if (file != -1) {
    global.cl_state_5 = file_text_read_real(file);
    file_text_close(file);
} else {
	global.cl_state_5 = 0;
}