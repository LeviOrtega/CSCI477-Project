depth = -9999;
//textbox parameters
textbox_width = 735;
textbox_height = 223;
border = 16;
line_sep = 32;
line_width = textbox_width - border* 2;
txtb_spr = spr_textbox;
txtb_img = 0;
txtb_img_spd = 6/60;


// the text
page = 0;
text[0] = "Hello i am a line of length something";
text[1] = "The quick brown fox jumped over the lazy dog. The quick brown fox jumped over the lazy dog.";
text[2] = "The quick brown fox jumped over the lazy dog. The quick brown fox jumped over the lazy dog. The quick brown fox jumped over the lazy dog.";
text[3] = "damn";
text_length[0] = string_length(text[0]);
draw_char = 0;
text_spd = 1;

setup = false;