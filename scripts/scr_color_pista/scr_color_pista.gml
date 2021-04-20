function scr_color_pista(skin_param, color_param) {
	var skin = skin_param
	var color = c_white 

	switch(skin)
	{
		case 1: color = scr_crear_color(color_param) break
		default: color = c_white break
		/*case 2: color = make_color_rgb(64,128,255)  break
		case 3: color = make_color_rgb(91,255,67)  break
		case 4: color = make_color_rgb(255,227,64)  break
		case 5: color = make_color_rgb(76,76,76)  break
		case 6: color = make_color_rgb(214,214,214)  break
		case 7: color = make_color_rgb(255,67,161)  break
		case 8: color = make_color_rgb(255,146,72)  break
		case 9: color = make_color_rgb(180,74,255)  break
		case 10: color = make_color_rgb(77,242,255)  break
		case 11: color = make_color_rgb(214,214,214)  break
		case 12: color = make_color_rgb(255,67,161)  break
		case 13: color = make_color_rgb(255,146,72)  break
		case 14: color = make_color_rgb(180,74,255)  break
		case 15: color = make_color_rgb(77,242,255)  break*/
	}

	return color

}
