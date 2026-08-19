//settings that change text
if global.fullscreen_checked == true
	{
		option[2, 0] = "Fullscreen: ON";
	}
else
	{
		option[2, 0] = "Fullscreen: OFF";
	}

if global.vsync == true
	{
		option[2, 1] = "V-Sync: ON";
	}
else
	{
		option[2, 1] = "V-Sync: OFF";
	}

//get inputs
up_key = keyboard_check_pressed(vk_up) || keyboard_check_pressed( ord("W") );
down_key = keyboard_check_pressed(vk_down) || keyboard_check_pressed( ord("S") );
accept_key = keyboard_check_pressed( ord("Z") ) || keyboard_check_pressed( ord("E") ) || keyboard_check_pressed( vk_space );

//store number of options in current menu
op_length = array_length(option[menu_level])

if instance_exists(obj_textbox){}
else{
//move through the menu
pos += down_key - up_key;
if pos >= op_length {pos = 0}
if pos < 0 {pos = op_length-1}


//using the options
if accept_key {
	
	var _sml = menu_level;

	switch(menu_level){
	
		//pause menu
		case 0:
			switch(pos) {
				//start game
				case 0: create_textbox("startgame"); break;
				//settings
				case 1: menu_level = 2; break;
				//quit
				case 2: create_textbox("quitgame"); break;
				}
			break;
			
		//start
		case 1:
			switch(pos) {
				//question
				case 0: break;	
				//yes
				case 1: room_goto(rm_basic_house); break;
				//no
				case 2: menu_level = 0; break;
				}
			break;
		
		//settings
		case 2:
			switch(pos) {
				//fullscreen
				case 0: global.fullscreen_checked = !global.fullscreen_checked;
					window_set_fullscreen(global.fullscreen_checked); break;
				//v-sync
				case 1: global.vsync = !global.vsync;
					display_reset(0, global.vsync); break;
				//controlls
				case 2: menu_level = 3; break;	
				//back
				case 3: menu_level = 0; break;
				}
			break;	
			
		//controlls
		case 3:
			switch(pos) {
				//1
				case 0: menu_level = 4; break;	
				//2
				case 1: menu_level = 5; break;	
				//3
				case 2: menu_level = 6; break;
				//4
				case 3: menu_level = 7; break;
				//back
				case 4: menu_level = 2; break;
				}
			break;	
			
		//mm
		case 4:
			switch(pos) {
				//1
				case 0: break;
				//2
				case 1: break;
				//back
				case 2: menu_level = 3; break;
				}
			break;
			
		//qm
		case 5:
			switch(pos) {
				//1
				case 0: break;
				//2
				case 1: break;
				//3
				case 2: break;
				//back
				case 3: menu_level = 3; break;
				}
			break;
			
		//ig
		case 6:
		switch(pos) {
			//1
			case 0: break;
			//2
			case 1: break;
			//3
			case 2: break;
			//4
			case 3: break;
			//back
			case 4: menu_level = 3; break;
			}
		break;
		
	//d
		case 7:
		switch(pos) {
			//1
			case 0: break;
			//back
			case 1: menu_level = 3; break;
			}
		break;
		
		}

	//set position back
	if _sml != menu_level {pos = 0};

	//correct option length
	op_length = array_length(option[menu_level])

	}
}