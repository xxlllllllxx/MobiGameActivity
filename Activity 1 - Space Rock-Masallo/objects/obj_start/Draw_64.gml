
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
h2 = room_height / 2;
w2 = room_width / 2;

draw_set_font(fnt_huge);
draw_text(w2, h2 / 2, "SPACE GAME");

if(classic_disabled){
	draw_set_color(c_red);
} else {
	draw_set_color(c_white);
}
draw_set_font(fnt_large);
draw_text(w2, h2 - 60, "CLASSIC");


if(infinite_disabled){
	draw_set_color(c_red);
} else {
	draw_set_color(c_white);
}
draw_set_font(fnt_large);
draw_text(w2, h2 + 60, "INFINITE");

draw_set_color(c_white);
draw_set_font(fnt_small);
draw_text(w2, h2 + (h2 / 2), "BACK");

//draw_set_font(fnt_medium);
//draw_text(w2, h2 + 30, "High Score: "+ string(global.highscore));






