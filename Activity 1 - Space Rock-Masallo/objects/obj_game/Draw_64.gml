if(instance_exists(obj_cl_game)){
	if (!obj_cl_game.objective_finished){
		game_level = obj_cl_game.rm_number;
		next_level_points = 200 * (obj_cl_game.rm_number);
	}
}
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(fnt_small);
draw_text(100, 20, "Score: " + string(points));
draw_text(100, 40, "High Score: "+ string(global.highscore));

var xx = display_get_width() / 2;
var yy = display_get_height() / 2;

draw_set_color(c_white);

if(game_start && !game_over){
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	if(instance_exists(obj_cl_game)){
		if(obj_cl_game.objective_finished){
			draw_set_font(fnt_huge);
			draw_text(xx, 200, "Congratulations, You finished the Objective");
		}
	} else {
		var text1 = "LEVEL " + string(game_level);
		var text2 = "Score " + string(next_level_points) + " points to enter next Level";
	
		draw_set_font(fnt_large);
		draw_text(xx, yy - 70, text1);
		draw_set_font(fnt_medium);
		draw_text(xx, yy - 40, text2);
	}
}

if(game_over){
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
		var text1 = "Game Over!";
		if(score_countdown <= points){
			var text2 = "Score : " + string(score_countdown);
			
			draw_set_font(fnt_medium);
			draw_text(xx, yy + 40, text2);
		} else {
			var text2 = "Score : " + string(points);
			
			draw_set_font(fnt_medium);
			draw_text(xx, yy + 40, text2);
		}
		draw_set_font(fnt_large);
		draw_set_color(c_red);
		draw_text(xx, yy, text1);
		
		draw_set_font(fnt_small);
		draw_set_color(c_red);
		draw_set_halign(fa_right);
		draw_set_valign(fa_top);
		draw_text(room_width, 10, "Press [ ESCAPE ] to return to main screen.");
}

if(!game_over && !game_start){
	draw_set_halign(fa_right);
	draw_set_valign(fa_top);
	
	
	var text1 = "LEVEL " + string(game_level);
	var text2 = "Score " + string(next_level_points) + " points to enter next Level";
	
	draw_set_font(fnt_medium);
	draw_text(room_width - 20, 20, text1);
	draw_set_font(fnt_small);
	draw_text(room_width - 20, 50, text2);
}