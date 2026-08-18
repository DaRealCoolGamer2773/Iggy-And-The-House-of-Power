/// Dialogue Variables
global.tvdialogueA = "1";
global.myhousedialogueA = "1";
global.newhousedialogueA = "1";
global.floweydialogueA = "1";
global.iggyconfuseddialogueA = "1";
global.tvdialogueB = "1";

/// @param text_id
function scr_game_text(_text_id){

switch(_text_id) {



	//text_id = ""; is the creation code
	case "startgame":
		scr_text("Are you sure?", "menu");
			
			scr_option("Yes", "startgame - yes")
			scr_option("No", "startgame - no")
		break;
	case "startgame - yes":
		room_goto(rm_basic_house);
		break;
	case "startgame - no":
		scr_text("Aw man...", "menu")
		break;
	
	case "quitgame":
		scr_text("Are you sure you want to quit?");
			
			scr_option("Yes", "quitgame - yes")
			scr_option("No", "quitgame - no")
		break;
	case "quitgame - yes":
		scr_text("Quitting...")
		game_end()
	case "quitgame - no":
		scr_text("Good choice.")
		break;
		
	case "pause_screen":
		scr_text("Quit to main menu?");
			
			scr_option("Yes", "pause_screen - yes")
			scr_option("No", "pause_screen - no")
		break;
	case "pause_screen - yes":
		scr_text("Quitting...")
		game_restart();
	case "pause_screen - no":
		scr_text("Okay, have fun!")
		break;
	
	case "testing1":
		scr_text("Okaaaay. Testing 1 2 3, Testing 1 2 3.", "guy");
		scr_text("Soooo, guess this is working", "guy");
		scr_text("So can can we end the test now?", "guy");
		scr_text("Yes.", "dev");
		scr_text("Okay.", "guy");
		break;
		
	case "testing2":
		scr_text("Okaaaay. Here are options 1, 2, and 3. Let's see if this works", "guy");
			
			scr_option("1", "testing2 - 1")
			scr_option("2", "testing2 - 2")
			scr_option("3", "testing2 - 3")
		break;
		
	case "testing2 - 1":
		scr_text("Mkay, You selected 1.", "guy")
		scr_text("Good, Good. It's working.", "guy")
		break
		
	case "testing2 - 2":
		scr_text("Mkay, You selected 2.", "guy")
		scr_text("Good, Good. It's working.", "guy")
		break
		
	case "testing2 - 3":
		scr_text("Mkay, You selected 3.", "guy")
		scr_text("Good, Good. It's working.", "guy")
		break
		
	case "testing3":
		scr_text("Hey, Iggy. Is your textbox portrait working?", "guy");
		scr_text("Yeah, why?", "iggy-confused", -1);
		scr_text("No reason!", "guy");
		scr_text("Good.", "dev")
		break;
		
	case "iggytesting1":
	scr_text("So, are you an idiot?", "iggy-confused", -1);
			
			scr_option("Yes", "iggytesting1 - 1")
			scr_option("No", "iggytesting1 - 2")
		break;
		
	case "iggytesting1 - 1":
		scr_text("I knew it!", "iggy-happy", -1)
		break	
	case "iggytesting1 - 2":
		scr_text("You aren't?", "iggy-confused", -1)
		scr_text("What a shame...", "iggy-pissed", -1)
		break
		
	case "tvA1":
		scr_text("Why are you clicking my TV?", "iggy-confused", -1);
		scr_text("No.", "iggy-pissed", -1);
		scr_text("You can't use it.", "iggy-pissed", -1);
		global.tvdialogueA = "2";
		break;
	case "tvA2":
		scr_text("...", "iggy-pissed", -1);
		global.tvdialogueA = "3";
		break;
	case "tvA3":
		scr_text("Stop.", "iggy-pissed", -1);
		scr_text("You're going to break it.", "iggy-pissed", -1);
		global.tvdialogueA = "0";
		break;
	case "tvA0":
		scr_text("*...");
		break;
		
	case "rug1":
		scr_text("What?", "iggy-confused", -1);
		scr_text("There's nothing special about it.", "iggy-pissed", -1);
		break;
		
	case "myhouseA1":
		scr_text("You just left...", "iggy-pissed", -1);
		scr_text("Why go back?", "iggy-confused", -1);
		global.myhousedialogueA = "0";
		break;
	case "myhouseA0":
		scr_text("*...");
		break;
		
	case "newhouseA1":
		scr_text("Wait...", "iggy", -1);
		scr_text("This house wasn't here before.", "iggy-confused", -1);
		scr_text("...", "iggy-confused", -1);
		scr_text("...", "iggy-pissed", -1);
		scr_text("I'm gonna rob it!", "iggy-happy", -1);
		global.newhousedialogueA = "0";
		break;
	case "newhouseA0":
		scr_text("I'm gonna rob it!", "iggy-happy", -1);
		break;
		
	case "howdyfalls1":
		scr_text("The town sucks.", "iggy-pissed", -1);
		scr_text("I'm not going down there.", "iggy-pissed", -1);
		break;
		
	case "floweyA1":
		scr_text("I'm Flowey! Flowey the flower!", "flowey");
		scr_text("Where am I?", "flowey-confused");
		global.floweydialogueA = "0";
		break;
	case "floweyA0":
		scr_text("...", "flowey-confused");
		break;
		
	case "iggyconfusedA1":
		scr_text("This looks like my house.", "iggy-confused", -1);
		scr_text("Purple sucks.", "iggy-pissed", -1);
		global.iggyconfuseddialogueA = "0";
		break;
	case "iggyconfusedA0":
		scr_text("*...");
		break;
		
	case "strangehallway1":
		scr_text("That wasn't there before.", "iggy-confused", -1);
		break;
		
	case "dontgoback1":
		scr_text("I shouldn't go back now.", "iggy", -1);
		break;
		
	case "tvB1":
		scr_text("*T  E  L  E  V  I  S  I  O  N*");
		scr_text("*Click.");
		scr_text("It doesn't work.", "iggy-pissed", -1);
		global.tvdialogueB = "0";
		break;
	case "tvB0":
		scr_text("*...");
		break;
		
	case "rug2":
		scr_text("I always wanted a purple carpet.", "iggy-happy", -1);
		break;
	
	case "flowery1":
		audio_play_sound(snd_flowery_heyguys, 100, false);
		scr_text("Hey! The next room is down there!", "flowery");
		break;
		




	}

}