click_performed_u = false;
touch_performed_u = false;

if (device_mouse_check_button_pressed(1, mb_left)) {
    if (mouse_x > obj_btn_up.x && mouse_x < obj_btn_up.x + button_width && mouse_y > obj_btn_up.y && mouse_y < obj_btn_up.y + button_height ) {
		touch_performed_u = true;
    } else {
		touch_performed_u = false;
	}
}
if (device_mouse_check_button_released(1, mb_left)) {
    if (mouse_x > obj_btn_up.x && mouse_x < obj_btn_up.x + button_width && mouse_y > obj_btn_up.y && mouse_y < obj_btn_up.y + button_height ) {
		touch_performed_u = false;
    }
}
// Update game controls based on input
if (keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W")) || touch_performed_u  || device_mouse_check_button(1, mb_left)) {
    animation_paused_u = false;
	click_performed_u = true;
}

if (keyboard_check_released(vk_up) || keyboard_check_released(ord("W")) || touch_performed_u) {
    animation_paused_u = true;
	click_performed_u = false;
}

// Update animation
if (!animation_paused_u) {
	
    image_index += 0.1; // or any other value to control the animation speed
    if (image_index >= image_number) {
        image_index = 1;
    }
} else {
    image_index = 0;
}

if(!animation_paused_u || click_performed_u || touch_performed_u){
    if(instance_exists(obj_game)){
		obj_game.up = true;	
	} else if(instance_exists(obj_cl_game)){
		obj_cl_game.up = true;
	}
} else {
	if(instance_exists(obj_game)){
		obj_game.up = false;
	} else if(instance_exists(obj_cl_game)){
		obj_cl_game.up = false;
	}
}


