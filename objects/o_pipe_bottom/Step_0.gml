x -= o_game.game_speed;

if x < 0 {
	instance_destroy(id);
}

if moving = true {
	if status = 0 {
		status = 2;
	}
	if image_yscale < 1 {
		status = 2;
	} else if o_pipe_top.image_yscale < 1 {
		status = 1;
	}
}


if status = 1 {
	image_yscale -= .05;
} else if status = 2 {
	image_yscale += .05;
}