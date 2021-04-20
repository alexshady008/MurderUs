function scr_crear_color(colorParam) {
	//Crea los colores
	var tipoColor = colorParam
	switch(tipoColor){
		case 1: var color = make_color_rgb(255,62,62)  break
		case 2: var color = make_color_rgb(64,128,255)  break
		case 3: var color = make_color_rgb(91,255,67)  break
		case 4: var color = make_color_rgb(255,227,64)  break
		case 5: var color = make_color_rgb(76,76,76)  break
		case 6: var color = make_color_rgb(214,214,214)  break
		case 7: var color = make_color_rgb(255,67,161)  break
		case 8: var color = make_color_rgb(255,146,72)  break
		case 9: var color = make_color_rgb(180,74,255)  break
		case 10: var color = make_color_rgb(77,242,255)  break
		case 11: var color = make_color_rgb(255,159,182)  break
		case 12: var color = make_color_rgb(219,107,77)  break
		case 13: var color = make_color_rgb(54,255,193)  break
		case 14: var color = make_color_rgb(194,255,59)  break
		case 15: var color = make_color_rgb(140,140,67)  break
		case 16: var color = make_color_rgb(155,50,50)  break
		case 17: var color = make_color_rgb(196,255,184)  break
		case 18: var color = make_color_rgb(166,151,255)  break
		case 19: var color = make_color_rgb(202,251,255)  break
		case 20: var color = make_color_rgb(255,250,194)  break
		default: var color = c_white  break
	}
	return color


}
