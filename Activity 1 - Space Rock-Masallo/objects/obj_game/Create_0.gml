
game_level = 1;
sound_track_list = array_create(5);
sound_track_list[0] = snd_bg5;
sound_track_list[1] = snd_bg1;
sound_track_list[2] = snd_bg2;
sound_track_list[3] = snd_bg3;
sound_track_list[4] = snd_bg4;
points = 50;
game_over = false;

game_start = true;
next_level_points = 200;

player_speed = 3;
player_rotation_speed = 3;

bullet_speed = 10;

rock_big_speed = 1;
rock_small_speed = 2;

rock_count = 12;

boost_appearance = 600;

point_increment = 10;

boosted = false;
boost_selection = 0;

invincibility = 100;
invincible = false;

up = false;
down = false;
left = false;
right = false;

boost_obj = pointer_null;

score_countdown = 0;

var file = file_text_open_read("highscore.txt");
if (file != -1) {
    global.highscore = file_text_read_real(file);
    file_text_close(file);
} else {
	global.highscore =0;
}

audio_stop_all();

alarm[2] = 150;
alarm[3] = boost_appearance;