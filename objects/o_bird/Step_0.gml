if y < 0 {
	y = 1;
}
bg_id = layer_background_get_id("Background");
current_bg = layer_background_get_sprite(bg_id)
if current_bg = s_bg3 && status != 2 {
	sprite_index = s_bird_scarf;
} else if current_bg = s_bg4 && status != 2 {
	sprite_index = s_bird_glasses;
} else if current_bg = s_bg5 && status != 2 {
	sprite_index = s_bird;
} else if current_bg = s_bg6 && status != 2 {
	sprite_index = s_bird_helmet;
} else if status = 1 {
	sprite_index = s_bird;
}
	
if timer = 0 and status != 0 and o_game.game_start = true {
	y += fall_speed;
}

if hyper_count > 0 {
	hyper_count -= 1;
}

if hyper_count = 0 {
	status = 1;
	audio_stop_sound(hyper);
	if audio_is_paused(bgm) {
		audio_resume_sound(bgm);
	}
}

if timer > 0 {
	timer -= 1;
	y-= fall_speed * 2;
}

if keyboard_check_pressed(vk_space) && status != 0 {
	o_game.game_start = true;
	if !audio_is_playing(bgm) {
		audio_play_sound(bgm,1,true);
		audio_sound_gain(bgm,.05,0);
	}
	timer = 7;
	audio_sound_gain(flap,.1,0);
	audio_play_sound(flap,1,false);
}

if status = 1 && (place_meeting(x,y,o_pipe_top) or place_meeting(x,y,o_pipe_bottom) or y = room_height) {
	status = 0;
	hyper_count = -1;
	audio_play_sound(fall,1,false);
	audio_sound_gain(fall,0.2,0);
}

if keyboard_check_pressed(ord("R")) {
	game_restart();
}

if status = 0 {
	image_speed = 0;
	audio_pause_sound(hyper);
	audio_pause_sound(bgm);
}


if flower_count = 4 {
	flower_count = 0;
	status = 2;
	hyper_count = 140;
}

if status = 2 {
	sprite_index = s_bird_hyper;
	if !audio_is_playing(hyper) {
		audio_play_sound(hyper,1,false);
		audio_sound_gain(hyper,.2,0);
		audio_pause_sound(bgm);
	}
}