/// @description Draw ourself
event_inherited();

switch (state) {
	case "evolving":
		gpu_set_blendmode(bm_add);
		
		if transformed {
			flash -= 0.05;
			if (facing == -1) {
				image_xscale -= 0.04;
			}
			else {
				image_xscale += 0.04;
			}
			image_yscale += 0.04;
		} else {
			flash += 0.05;
			if (facing == -1) {
				image_xscale += 0.04;
			}
			else {
				image_xscale -= 0.04;
			}
			image_yscale -= 0.04;
		}
		// Shrink image.
		
		
		if flash >= 1 {
			transformed = true;
			switch (form) {
				case 0:
					sprite_index = spr_player_dodo;
					break;
				case 1:
					sprite_index = spr_basic_dino;
					break;
				case 2:
					sprite_index = spr_triceratops_idle;
					break;
			}
		}
		if flash <= 0 && transformed {
			if (facing){
				image_xscale = 1;
			}
			else {
				image_xscale = -1;
			}
			image_yscale = 1;
			state = "moving";
			transformed = false;
			transforming = false;
		}
		//shader_set(shd_flash);
		//shd_alpha = shader_get_uniform(shd_flash, "_alpha");
		//shader_set_uniform_f(shd_alpha, flash);
		draw_self();
		shader_reset();
		gpu_set_blendmode(bm_normal);
		break;
}
