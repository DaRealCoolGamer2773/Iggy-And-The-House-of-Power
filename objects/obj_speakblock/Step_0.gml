/// Important Stuff
var _s = id;

if position_meeting(mouse_x, mouse_y, id) && mouse_check_button_pressed(mb_left)
	{
if instance_exists(obj_textbox){}
else{ if instance_exists(obj_pauser) {}
else{
		
	if text_id == "tvA"
		{
			create_textbox("tvA"+global.tvdialogueA);
		}
	else{
	if text_id == "tvB"
		{
			create_textbox("tvB"+global.tvdialogueB);
		}
	else{
	if text_id == "myhouseA"
		{
			create_textbox("myhouseA"+global.myhousedialogueA);
		}
	else{
	if text_id == "newhouseA"
		{
			create_textbox("newhouseA"+global.newhousedialogueA);
		}
	else{
	if text_id == "floweyA"
		{
			create_textbox("floweyA"+global.floweydialogueA);
		}
	else{
	if text_id == "iggyconfusedA"
		{
			create_textbox("iggyconfusedA"+global.iggyconfuseddialogueA);
		}
	else{
		create_textbox(text_id);
	}
	}
	}
	}
	}
	}
	}
	}	
	}