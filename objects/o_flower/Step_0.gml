x -= o_game.game_speed;

if dir = 0 {
	y -= 3;
} else if dir = 1 {
	y += 3;
}

if y > room_height - 100 {
	dir = 0;
} else if y < 100 {
	dir = 1;
}

if place_meeting(x,y,o_bird) && o_bird.status != 2 {
	instance_destroy();
	audio_play_sound(flower_get,1,false);
	audio_sound_gain(flower_get,0.5,0);
}