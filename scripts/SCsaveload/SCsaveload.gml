function scr_save_data(_data) {
    var json_string = json_stringify(_data, true);
    
    var file = file_text_open_write("save.json");
    file_text_write_string(file, json_string);
    file_text_close(file);
}

function scr_load_data() {
    var data;
    
    if (!file_exists("save.json")) {
        return [];
    }
    
    var file = file_text_open_read("save.json");
    
    var json_string = "";
    
    while (!file_text_eof(file)) {
        json_string += file_text_read_string(file);
        json_string += "\n"; // biar format tetap
        file_text_readln(file);
    }
    
    file_text_close(file);
    
    if (json_string == "") {
        data = [];
    } else {
        data = json_parse(json_string);
    }
    
    return data;
}