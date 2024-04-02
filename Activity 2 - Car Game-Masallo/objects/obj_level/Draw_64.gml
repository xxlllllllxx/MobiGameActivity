 
if(x >= (683 + (64 * level))){
draw_set_font(fnt_large);
draw_set_halign(fa_center);
draw_set_valign(fa_center);
if(disabled){
	draw_set_color(c_red);
} else {
draw_set_color(color_enable);
}
draw_text(x, y, level);
}