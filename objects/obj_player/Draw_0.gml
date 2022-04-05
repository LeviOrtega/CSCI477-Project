/// @description Draw ourself
draw_self();
show_debug_message("scale: " + string(image_xscale));
switch (state) {
	case "evolving":
		gpu_set_blendmode(bm_add);
		if transformed {
			flash -= 0.05;
			diff = random_range(-0.01, 0.04);
			image_xscale += diff;
			image_yscale += diff;
			image_xscale = clamp(image_xscale,0,1);
			image_yscale = clamp(image_yscale,0,1);
		} else {
			flash += 0.05;
			image_xscale -= 0.04;
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
			}
		}
		if flash <= 0 && transformed {
			state = "moving";
			transformed = false;
			image_xscale = 1;
			image_yscale = 1;
		}
		shader_set(shd_flash);
		shd_alpha = shader_get_uniform(shd_flash, "_alpha");
		shader_set_uniform_f(shd_alpha, flash);
		draw_self();
		shader_reset();
		gpu_set_blendmode(bm_normal);
		break;
}

