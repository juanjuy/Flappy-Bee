image_yscale = o_game.bottom_scale;

status = 0;

if o_game.game_score != 0 && frac((o_game.game_score+1)/10) = 0 {
	moving = true;
} else {
	moving = false;
}