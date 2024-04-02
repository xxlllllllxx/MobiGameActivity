draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_set_color(c_white);

if(obj_game.win){
	draw_set_font(fnt_large);
	draw_text(room_width/2, 300, "YOU WIN!!!");
	draw_set_font(fnt_small);
	draw_text(room_width/2, 350, "You've found the Parking space for your tank!");
} 

if(obj_game.lose) {
	draw_set_font(fnt_large);
	draw_text(room_width/2, 300, "YOU LOSE!!!");
	draw_set_font(fnt_small);
	draw_text(room_width/2, 350, "You've destroyed too much property!");
}