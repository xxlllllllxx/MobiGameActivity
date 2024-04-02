//boost
sprite_index = spr_boost;

if(round(obj_boost_load.load_level) == 0){
	alarm[0] = 1;
}
if((keyboard_check(ord("F")) || device_mouse_check_button(0, mb_left) && instance_exists(obj_player)) && obj_boost_load.load_level > 1){
	if (mouse_x > obj_boost.x && mouse_x < obj_boost.x + button_width && mouse_y > obj_boost.y && mouse_y < obj_boost.y + button_height || keyboard_check(ord("F")) ) {
		image_index = (obj_game.boost_selection % 3) + 1;
		obj_game.boosted = true;
		alarm[0] = 1000;
	}
} else {
	
}