click_performed_r = false;
touch_performed_r = false;

if (device_mouse_check_button_pressed(4, mb_left)) {
    if (mouse_x > obj_btn_right.x && mouse_x < obj_btn_right.x + button_width && mouse_y > obj_btn_right.y && mouse_y < obj_btn_right.y + button_height ) {
		touch_performed_r = true;
    } else {
		touch_performed_r = false;
	}
}
if (device_mouse_check_button_released(4, mb_left)) {
    if (mouse_x > obj_btn_right.x && mouse_x < obj_btn_right.x + button_width && mouse_y > obj_btn_right.y && mouse_y < obj_btn_right.y + button_height ) {
		touch_performed_r = false;
    }
}

// Update game controls based on input
if (keyboard_check_pressed(vk_right) || keyboard_check_pressed(ord("D")) || touch_performed_r || device_mouse_check_button(4, mb_left)) {
    animation_paused_r = false;
	click_performed_r = true;
}

if (keyboard_check_released(vk_right) || keyboard_check_released(ord("D")) || touch_performed_r) {
    animation_paused_r = true;
	click_performed_r = false;
}

// Update animation
if (!animation_paused_r) {
	
    image_index += 0.1; // or any other value to control the animation speed
    if (image_index >= image_number) {
        image_index = 1;
    }
} else {
    image_index = 0;
}

if(!animation_paused_r || click_performed_r || touch_performed_r){
 if(instance_exists(obj_game)){
		obj_game.right = true;	
	} else if(instance_exists(obj_cl_game)){
		obj_cl_game.right = true;	
	}
} else {
	if(instance_exists(obj_game)){
		obj_game.right = false;
	} else if(instance_exists(obj_cl_game)){
		obj_cl_game.right = false;
	}
}







