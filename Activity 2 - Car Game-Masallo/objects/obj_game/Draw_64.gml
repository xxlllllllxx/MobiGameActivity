if(level != 0){
	var l616494A6_0 = sprite_get_width(spr_life);
	var l616494A6_1 = 0;

	for(var l616494A6_2 = player_life; l616494A6_2 > 0; --l616494A6_2) {
		draw_sprite(spr_life, 5, 5 + l616494A6_1, 0);
		l616494A6_1 += l616494A6_0;
	}

	draw_text(20, 70, level);
}