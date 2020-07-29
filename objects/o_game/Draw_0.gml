draw_set_font(fnt_text);
draw_text_color(55,40,"Score: " + string(game_score),c_black,c_black,c_black,c_black,1);

if o_bird.status = 0 {
	draw_text_color(room_width/2,room_height/3,"Your score is: " + string(game_score) + ". Press R to retry",c_black,c_black,c_black,c_black,1);
}

if game_start = false {
	draw_set_halign(fa_center);
	draw_set_color(c_black);
	draw_text(room_width/2,room_height/3,"Press Spacebar to flap!")
}
//draw_text(100,100,"topscale: " + string(top_scale))
//draw_text(100,200,"bottomscale: " + string(bottom_scale))
//draw_text(100,300,"flowerchance: " + string(flower_chance));
//draw_text(100,400,"flowercount: " + string(o_bird.flower_count));

//if instance_exists(o_flower_count) {
//	draw_text(100,500,"flowertimer: " + string(o_flower_count.timer));
//}