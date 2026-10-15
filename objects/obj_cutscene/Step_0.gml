if global.cutscene_playing == true
	{
		sprite_index = current_cutscene;
	}
if image_index == last_frame
	{
		sprite_index = spr_video_empty;
		global.cutscene_playing = false
	}