width = 64;
height =104;

op_border = 8;
op_space = 16;

pos = 0;

//pause menu
option[0, 0] = "Start Game";
	option[1, 0] = "Are you sure?";
	option[1, 1] = "Yes";
	option[1, 2] = "No";
option[0, 1] = "Settings";
	option[2, 1] = "Controlls";
		option[3, 0] = "Main Menu";
			option[4, 0] = "Arrow Keys/WASD = Navigate";
			option[4, 1] = "Z/E/Space = Accept";
			option[4, 2] = "Back";
		option[3, 1] = "Quick Menu";
			option[5, 0] = "Arrow Keys/WASD = Navigate";
			option[5, 1] = "Z/E/Space = Accept";
			option[5, 2] = "X/Q = Back";
			option[5, 3] = "Back";
		option[3, 2] = "In Game";
			option[6, 0] = "Arrow Keys/WASD = Move";
			option[6, 1] = "LMB = Interact";
			option[6, 2] = "C/R = Quick Menu";
			option[6, 3] = "ESC = Main Menu";
			option[6, 4] = "Back";
		option[3, 3] = "Dialogue";
			option[7, 0] = "Z/E/SPACE = Next Page/Skip Page";
			option[7, 1] = "Back";
		option[3, 4] = "Back";
	option[2, 2] = "Back";
option[0, 2] = "Quit Game";

op_length = 0;
menu_level = 0;