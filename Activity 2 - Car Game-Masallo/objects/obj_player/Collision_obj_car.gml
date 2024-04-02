if(!other.destroyed){
	other.destroyed = true;
	instance_destroy(other);
	instance_create_layer(other.x, other.y, "Instances", obj_destroyed);
	if(obj_game.player_life > 1){
		obj_game.player_life = obj_game.player_life - 1;
	} else { 
		obj_game.lose = true;
		obj_game.player_life = obj_game.player_life - 1;
		obj_game.alarm[0] = 1;
		instance_destroy(obj_player);
		x_mark = instance_create_layer(x, y, "Instances", obj_destroyed);
		x_mark.image_xscale = 2.5;
		x_mark.image_yscale = 2.5;
		
	}
}