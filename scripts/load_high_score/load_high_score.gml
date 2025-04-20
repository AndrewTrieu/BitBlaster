function load_high_score() {
	if (file_exists("highscore.dat")) {
		var _file = file_text_open_read("highscore.dat");
		var _str = file_text_read_string(_file);
		file_text_close(_file);
            
		try {
			var score_data = real(_str);
			global.high_score = score_data
		} catch (_) {
			global.high_score = 0;
		}
	} else {
		global.high_score = 0;
	}
}