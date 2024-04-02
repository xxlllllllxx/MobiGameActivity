click_performed_d = false;
touch_performed_d = false;

if (device_mouse_check_button_pressed(2, mb_left)) {
    if (mouse_x > obj_btn_down.x && mouse_x < obj_btn_down.x + button_width && mouse_y > obj_btn_down.y && mouse_y < obj_btn_down.y + button_height ) {
		touch_performed_d = true;
    } else {
		touch_performed_d = false;
	}
} 
if(device_mouse_check_button_released(2, mb_left)){
	 if (mouse_x > obj_btn_down.x && mouse_x < obj_btn_down.x + button_width && mouse_y > obj_btn_down.y && mouse_y < obj_btn_down.y + button_height ) {
		touch_performed_d = false;
    } 
}

// Update game controls based on input
if (keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S")) || touch_performed_d || device_mouse_check_button(2, mb_left)) {
    animation_paused_d = false;
	click_performed_d = true;
}

if (keyboard_check_released(vk_down) || keyboard_check_released(ord("S")) || touch_performed_d) {
    animation_paused_d = true;
	click_performed_d = false;
}

// Update animation
if (!animation_paused_d) {
	
    image_index += 0.1; // or any other value to control the animation speed
    if (image_index >= image_number) {
        image_index = 1;
    }
} else {
    image_index = 0;
}

if(!animation_paused_d || click_performed_d || touch_performed_d){
	if(instance_exists(obj_game)){
		obj_game.down = true;	
	} else if(instance_exists(obj_cl_game)){
		obj_cl_game.down = true;	
	}
} else {
	if(instance_exists(obj_game)){
		obj_game.down = false;
	} else if(instance_exists(obj_cl_game)){
		obj_cl_game.down = false;
	}
}


