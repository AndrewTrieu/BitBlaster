function save_high_score() {
	var file = file_text_open_write("highscore.dat");
    file_text_write_string(file, global.high_score);
    file_text_close(file);
}