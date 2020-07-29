if o_bird.flower_count = 0 {
	instance_create_layer(760,50,"counter",o_flower_count);
} else if o_bird.flower_count = 1 {
	instance_create_layer(800,50,"counter",o_flower_count);
} else if o_bird.flower_count = 2 {
	instance_create_layer(840,50,"counter",o_flower_count);
} else if o_bird.flower_count = 3 {
	instance_create_layer(880,50,"counter",o_flower_count);
}

o_bird.flower_count += 1;