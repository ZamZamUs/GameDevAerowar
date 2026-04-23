function save_game(name, save_name) {
    if (!instance_exists(oPlayer)) return
    
    var _save_data = {
        saved_name : save_name,
        saved_date_time : date_datetime_string(date_current_datetime()),
        money : 10000,
		upgrade_level : 5
		
    };
    
    var _json_string = json_stringify(_save_data, true)
    var _filename    = name + ".json"

    var _buffer = buffer_create(1, buffer_grow, 1)
    buffer_write(_buffer, buffer_string, _json_string)
    
    if (buffer_save(_buffer, _filename)) {
        show_debug_message("BERHASIL SAVE (buffer): " + _filename)
    } else {
        show_debug_message("GAGAL SAVE: " + _filename)
    }
    
    buffer_delete(_buffer)
}


function load_game(name) {
    var _filename = name + ".json"
    
    if (!file_exists(_filename)) {
        show_debug_message("Save tidak ditemukan: " + _filename)
        return
    }

    var _buffer = buffer_load(_filename)
    
    var _json_string = buffer_read(_buffer, buffer_string)
    buffer_delete(_buffer)
    
    if (_json_string == "") {
        show_debug_message("ERROR: File masih kosong")
        return
    }
    
    try {
        var _data = json_parse(_json_string);
        
        if (instance_exists(oPlayer)) {
            oPlayer.money = int64(_data.money);
			oPlayer.upgrade = int64(_data.upgrade_level);
        }
        
    } catch(_err) {
        show_debug_message("ERROR JSON_PARSE: " + string(_err))
    }
}