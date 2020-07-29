x -= o_game.game_speed;

if x < 0 {
	instance_destroy(id);
}
/// grow until the other pipe reaches 1 scale, then start shrinking
if moving = true {
	if status = 0 {
		status = 1;
	}
	if o_pipe_bottom.status = 1 {
		status = 2;
	} else if o_pipe_bottom.status = 2 {
		status = 1;
	}
}

if status = 1 {
	image_yscale -= .05;
} else if status = 2 {
	image_yscale += .05;
}