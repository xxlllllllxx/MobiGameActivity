//Create a new Booster
if(instance_number(obj_boost_change) == 0 ){
	if(instance_exists(obj_cl_game)){
		if(obj_cl_game.rm_number == 1 || obj_cl_game.rm_number == 2){
			
		} else {
			x = irandom_range(100, room_width-100);
			y = irandom_range(100, 300);
			boost_obj = instance_create_layer(x, y, "Instances", obj_boost_change);
			with (boost_obj){
				sprite_index = spr_boost_change;
				image_index = ((obj_game.boost_selection + 1) % 3);
			}
		}
	} else {
		x = irandom_range(100, room_width-100);
		y = irandom_range(100, 300);
		boost_obj = instance_create_layer(x, y, "Instances", obj_boost_change);
		with (boost_obj){
			sprite_index = spr_boost_change;
			image_index = ((obj_game.boost_selection + 1) % 3);
		}
	}
} 