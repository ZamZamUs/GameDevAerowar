function save_game() {
    if (!instance_exists(oPlayer)) return;

    var _save_data = {
        tips : oPlayer.tips,
		currentTips : oPlayer.currentTips
    };

    var _json_string = json_stringify(_save_data);

    var _file = file_text_open_write("save_data.json");
    file_text_write_string(_file, _json_string);
    file_text_close(_file);

    show_debug_message("Game Berhasil Disimpan!");
}

function load_game() {
    if (file_exists("save_data.json")) {
        var _file = file_text_open_read("save_data.json");
        var _json_string = file_text_read_string(_file);
        file_text_close(_file);

        var _data = json_parse(_json_string);

        if (instance_exists(oPlayer)) {
            oPlayer.tips = _data.tips;
			oPlayer.currentTips = _data.currentTips;
        }
        
        show_debug_message("Game Berhasil Dimuat!");
    }
}