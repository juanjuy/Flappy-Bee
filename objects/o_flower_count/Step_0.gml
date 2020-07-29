if timer > 0 {
	timer -= 1;
}

if instance_number(o_flower_count) = 4 && timer = 0 {
	timer = 120;
}

if timer = 100 {
	image_alpha = 0;
}

if timer = 80 {
	image_alpha = 1;
}

if timer = 60 {
	image_alpha = 0;
}

if timer = 40 {
	image_alpha = 1;
}

if timer = 20 {
	image_alpha = 0;
}

if timer = 1 {
	instance_destroy(o_flower_count);
	instance_destroy(o_flower_count);
	instance_destroy(o_flower_count);
	instance_destroy(o_flower_count);
}