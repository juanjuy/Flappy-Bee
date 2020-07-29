if o_bird.status = 2 {
	x -= 12;
}

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

if o_bird.status = 1 {
	x -= 4;
}

if place_meeting(x,y,o_bird) && o_bird.status != 2 {
	instance_destroy();
	audio_play_sound(flower_get,1,false);
}