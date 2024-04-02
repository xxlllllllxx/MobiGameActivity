click_performed_l = false;
touch_performed_l = false;

if (device_mouse_check_button_pressed(3, mb_left)) {
    if (mouse_x > obj_btn_left.x && mouse_x < obj_btn_left.x + button_width && mouse_y > obj_btn_left.y && mouse_y < obj_btn_left.y + button_height ) {
		touch_performed_l = true;
    } else {
		touch_performed_l = false;
	}
}
if (device_mouse_check_button_released(3, mb_left)) {
    if (mouse_x > obj_btn_left.x && mouse_x < obj_btn_left.x + button_width && mouse_y > obj_btn_left.y && mouse_y < obj_btn_left.y + button_height ) {
		touch_performed_l = false;
    }
}

// Update game controls based on input
if (keyboard_check_pressed(vk_left) || keyboard_check_pressed(ord("A")) || touch_performed_l || device_mouse_check_button(3, mb_left)) {
    animation_paused_l = false;
	click_performed_l = true;
}

if (keyboard_check_released(vk_left) || keyboard_check_released(ord("A")) || touch_performed_l) {
    animation_paused_l = true;
	click_performed_l = false;
}

// Update animation
if (!animation_paused_l) {
	
    image_index += 0.1; // or any other value to control the animation speed
    if (image_index >= image_number) {
        image_index = 1;
    }
} else {
    image_index = 0;
}

if(!animation_paused_l || click_performed_l || touch_performed_l){
  if(instance_exists(obj_game)){
		obj_game.left = true;	
	} else if(instance_exists(obj_cl_game)){
		obj_cl_game.left = true;	
	}
} else {
	if(instance_exists(obj_game)){
		obj_game.left = false;
	} else if(instance_exists(obj_cl_game)){
		obj_cl_game.left = false;
	}
}


