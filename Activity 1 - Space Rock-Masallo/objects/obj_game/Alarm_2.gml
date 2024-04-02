audio_stop_all();
audio_play_sound(obj_game.sound_track_list[obj_game.game_level % 5], 1, true); 
game_start = false;
	
if(instance_exists(obj_cl_game) && obj_cl_game.objective_finished){
	alarm[6] = 1;
}