///game_save_secure()
filename = working_directory + "hackuwu"+string(game_id*2)+".dat"
save = ds_map_create();
save[? "petr_found"] = ds_list_write(global.petr_found);
result = ds_map_secure_save(save,filename)
ds_map_destroy(save);
return 0;
