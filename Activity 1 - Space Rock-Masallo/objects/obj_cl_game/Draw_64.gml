if(show_mechanics && !objective_finished){
	draw_set_font(fnt_medium);
	draw_set_color(c_aqua);
	draw_set_halign(fa_middle);
	draw_set_valign(fa_middle);
	draw_text(room_width/2, 200, mechanics[rm_number-1][next]);
}
