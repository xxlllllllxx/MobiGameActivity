
file = file_text_open_read("level"+string(level)+".txt");
if (file != -1) {
    disabled = (file_text_read_real(file) == 0)? true: false;
	file_text_close(file);
} else {
	disabled = true; 
}
 
if(level == 1){
	disabled = false;
}