function scr_set_defaults_for_text() {
	line_break_pos[0, page_number] = 999;
	line_break_num[page_number] = 0;
	line_break_offset[page_number] = 0;
	
	txtb_spr[page_number] = spr_textbox_nochar;
	speaker_sprite[page_number] = noone;
	speaker_side[page_number] = 1;
}





/// @param text
/// @param [character]
/// @param [side]
function scr_text(_text){
	
	scr_set_defaults_for_text();
	
	text[page_number] = _text;
	
	//get character info
	if argument_count > 1{
		switch(argument[1])
			{
			
			case "menu":
				txtb_spr[page_number] = spr_textbox_red;
				break;
			
			case "guy":
				speaker_sprite[page_number] = spr_guy_spk;
				txtb_spr[page_number] = spr_textbox_blue;
				break;
				
			case "iggy":
				speaker_sprite[page_number] = spr_iggy_spk;
				txtb_spr[page_number] = spr_textbox_green;
				break;
					case "iggy-confused":
						speaker_sprite[page_number] = spr_iggy_spk_confused;
						txtb_spr[page_number] = spr_textbox_green;
						break;
					case "iggy-happy":
						speaker_sprite[page_number] = spr_iggy_spk_happy;
						txtb_spr[page_number] = spr_textbox_green;
						break;
					case "iggy-pissed":
						speaker_sprite[page_number] = spr_iggy_spk_pissed;
						txtb_spr[page_number] = spr_textbox_green;
						break;
				
			case "dev":
				speaker_sprite[page_number] = spr_dev_spk;
				txtb_spr[page_number] = spr_textbox_red;
				break;
			
			case "flowey":
				speaker_sprite[page_number] = spr_flowey_spk;
				txtb_spr[page_number] = spr_textbox_ut;
				break;
					case "flowey-confused":
						speaker_sprite[page_number] = spr_flowey_spk_confused;
						txtb_spr[page_number] = spr_textbox_ut;
						break;
			
			case "flowery":
				speaker_sprite[page_number] = spr_flowery_spk;
				txtb_spr[page_number] = spr_textbox_dr;
				break;
			
			}
		}
		
		//side the character is on
		if argument_count > 2 {
		speaker_side[page_number] = argument[2];
		}
		
	page_number++;

}




/// @param option
/// @param link_id
function scr_option(_option, _link_id) {

	option[option_number] = _option;
	option_link_id[option_number] = _link_id;
	
	option_number++;

}

/// @param text_id
function create_textbox(_text_id) {

	with( instance_create_depth(0, 0, -9999, obj_textbox) )
		{
		scr_game_text(_text_id);
		}

}