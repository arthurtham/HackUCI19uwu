///game_load_secure()
if file_exists(working_directory + "hackuwu"+string(game_id*2)+".dat"){
    map = ds_map_secure_load(working_directory + "hackuwu"+string(game_id*2)+".dat");
    global.petr_found = ds_list_create();
    ds_list_read(global.petr_found, map[? "petr_found"]);
    /*for (var _i = 0; _i < 9; ++_i) {
            show_message(global.petr_found[| _i])
        }*/
    if ds_list_size(global.petr_found) < 9 or !ds_exists(global.petr_found,ds_type_list) {
        //show_message("corrupted file!")
        global.petr_found = ds_list_create()
        for (var _i = 0; _i < 9; ++_i) {
            ds_list_add(global.petr_found,0)
        }
    }
    ds_map_destroy(map)
    game_save_secure()
    }
else {
    global.petr_found = ds_list_create()
    for (var _i = 0; _i < 9; ++_i) {
        ds_list_add(global.petr_found,0)
    }
    game_save_secure()
    }
