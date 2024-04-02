draw_set_font(fnt_small);
draw_set_color(c_red);
draw_set_halign(fa_right);
draw_set_valign(fa_top);
draw_text(room_width, 10, "Press [ ESCAPE ] to return to main screen.");

w2 = room_width / 2;
h2 = room_height / 2;
draw_set_font(fnt_large);

draw_set_halign(fa_middle);
draw_set_valign(fa_middle);

	if(global.cl_state_1 == 1){
		draw_set_color(c_blue);
	} else {
		draw_set_color(c_red);
	}
	draw_text(w2 - w2/2 - 50, h2 + 40, 1);
	if(global.cl_state_2 == 1){
		draw_set_color(c_blue);
	} else {
		draw_set_color(c_red);
	}
	draw_text(w2 - w2/2 + 110, h2 - 170, 2);
	if(global.cl_state_3 == 1){
		draw_set_color(c_blue);
	} else {
		draw_set_color(c_red);
	}
	draw_text(w2 + 20, h2/2 - 40, 3);
	if(global.cl_state_4 == 1){
		draw_set_color(c_blue);
	} else {
		draw_set_color(c_red);
	}
	draw_text(w2 + w2/2 - 60, h2 - 170, 4);
	if(global.cl_state_5 == 1){
		draw_set_color(c_blue);
	} else {
		draw_set_color(c_red);
	}
	draw_text(w2 + w2/2 + 100, h2 + 40, 5);
