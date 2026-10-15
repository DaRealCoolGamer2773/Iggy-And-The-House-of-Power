if global.video_test_played = false
	{
		global.cutscene_playing = true;
		current_cutscene = spr_video_test;
		last_frame = 12;
		global.video_test_played = true;
	}
