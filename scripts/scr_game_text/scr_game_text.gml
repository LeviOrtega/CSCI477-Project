/// @param text_id
// this would hold pretty much most of the game's text
function scr_game_text(_text_id) {
	switch(_text_id) { 
		case "":
			break;
		case "sign 1":
			scr_text("Who goes there?");
			break;
		case "sign 2":
			scr_text("I am a different sign");
			break;
		case "test":
			scr_text("Hello we are testing this");
			scr_text("Are you ready?");
				scr_option("Yes", "test-ready");
				scr_option("No", "test-notready");
			break;
		case "test-ready":
			scr_text("nice");
			break;
		case "test-notready":
			scr_text("not nice");
			break;
	}
}