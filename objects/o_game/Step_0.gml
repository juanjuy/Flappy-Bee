var bg_id = layer_background_get_id("Background");

if o_bird.status = 2 {
	game_speed = 12;
} else if o_bird.status = 1 {
	game_speed = 4;
} else {
	game_speed = 0;
}

if game_start = true and !instance_exists(o_pipe_top){
	top_scale = random_range(1,4);
	instance_create_depth(room_width,0,1,o_pipe_top);
}

if game_start = true and !instance_exists(o_pipe_bottom) {
	bottom_scale = random_range(1,4);
	instance_create_depth(room_width,room_height,1,o_pipe_bottom);
}

if game_start = true && (instance_number(o_pipe_top) < 2 and (o_pipe_top.x = 240 or o_pipe_top.x = 236 or o_pipe_top.x = 232 or o_pipe_top = 244)) {
	if game_score < 10 {
		top_scale = random_range(1,5);
	} else if game_score > 9 and game_score < 20 {
		top_scale = random_range(1,6);
	} else if game_score > 19 and game_score < 30 {
		top_scale = random_range(1,7);
	} else if game_score > 29 and game_score < 39 {
		top_scale = random_range(1,8);
	} else if game_score > 39 {
		top_scale = random_range(1,9);
	}
	instance_create_depth(room_width,0,1,o_pipe_top);
	flower_chance = choose(1,2,3);
	if flower_chance = 3 {
		instance_create_depth(room_width + 360,random_range(100,668),1,o_flower);
	}
}

if game_start = true && (instance_number(o_pipe_bottom) < 2 and (o_pipe_bottom.x = 240 or o_pipe_bottom.x = 236 or o_pipe_bottom.x = 232 or o_pipe_bottom = 244)) {
	if game_score < 10 {
		bottom_scale = 6 - top_scale;
	} else if game_score > 9 and game_score < 20 {
		bottom_scale = 7 - top_scale;
	} else if game_score > 19 and game_score < 30 {
		bottom_scale = 8 - top_scale;
	} else if game_score > 29 and game_score < 39 {
		bottom_scale = 9 - top_scale;
	} else if game_score > 39 {
		bottom_scale = 10 - top_scale;
	}
	instance_create_depth(room_width,room_height, 1, o_pipe_bottom);
}

if instance_exists(o_pipe_top) && o_pipe_top.x = 480 && o_bird.status = 1 {
	game_score += 1;
	audio_play_sound(point_get,1,false);
	audio_sound_gain(point_get,0.5,0);
} else if o_bird.status = 2 {
	if o_pipe_top.x = 476 or o_pipe_top.x = 472 or o_pipe_top.x = 468 {
		game_score += 1;
	}
}

if o_bird.status = 0 {
	if o_bird.y < room_height {
		o_bird.y += 10;
	}
}

if game_score = 10 {
	layer_background_sprite(bg_id,s_bg2);
}

if game_score = 20 {
	layer_background_sprite(bg_id,s_bg3);
}

if game_score = 30 {
	layer_background_sprite(bg_id,s_bg4);
}

if game_score = 40 {
	layer_background_sprite(bg_id,s_bg5);
}

if game_score = 50 {
	layer_background_sprite(bg_id,s_bg6);
}