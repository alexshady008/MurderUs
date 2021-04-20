function scr_dibujar_accesorio_btn(argument0, argument1, argument2, argument3) {
	var tipo = argument0
	var posX = argument1
	var posY = argument2
	var escala = argument3

	switch(tipo){
		case 0: 
			draw_set_halign(fa_center)
			draw_set_valign(fa_middle)
			draw_set_font(fnt_chica)
			draw_text_outline2("NONE",posX,posY+5,c_black,1,1,c_white) 
		break
		case 1: draw_sprite_ext(spr_mascara01,0, posX, posY,escala,escala,0,c_white,1)  break
		case 2: draw_sprite_ext(spr_mascara02,0, posX, posY,1,1,0,c_white,1)  break
		case 3: draw_sprite_ext(spr_mascara03,0, posX, posY,escala,escala,0,c_white,1)  break
		case 4: draw_sprite_ext(spr_mascara04,0, posX, posY,escala,escala,0,c_white,1)  break
		case 5: draw_sprite_ext(spr_mascara05,0, posX, posY,escala,escala,0,c_white,1)  break
		case 6: draw_sprite_ext(spr_mascara06,0, posX, posY,escala,escala,0,c_white,1)  break
		case 7: draw_sprite_ext(spr_mascara07,0, posX, posY,escala,escala,0,c_white,1)  break
		case 8: draw_sprite_ext(spr_mascara08,0, posX, posY,escala,escala,0,c_white,1)  break
		case 9: draw_sprite_ext(spr_mascara09,0, posX, posY,escala,escala,0,c_white,1)  break
		case 10: draw_sprite_ext(spr_mascara10,0, posX, posY,escala,escala,0,c_white,1)  break
		case 11: draw_sprite_ext(spr_mascara11,0, posX, posY,escala,escala,0,c_white,1)  break
		case 12: draw_sprite_ext(spr_mascara12,0, posX, posY,escala,escala,0,c_white,1)  break
		case 13: draw_sprite_ext(spr_mascara13,0, posX, posY,escala,escala,0,c_white,1)  break
		case 14: draw_sprite_ext(spr_mascara14,0, posX, posY,escala,escala,0,c_white,1)  break
		case 15: draw_sprite_ext(spr_mascara15,0, posX, posY,escala,escala,0,c_white,1)  break
		case 16: draw_sprite_ext(spr_mascara16,0, posX, posY,escala,escala,0,c_white,1)  break
		case 17: draw_sprite_ext(spr_mascara17,0, posX, posY,escala,escala,0,c_white,1)  break
		case 18: draw_sprite_ext(spr_mascara18,0, posX, posY,escala,escala,0,c_white,1)  break
		case 19: draw_sprite_ext(spr_mascara19,0, posX, posY,escala,escala,0,c_white,1)  break
		case 20: draw_sprite_ext(spr_mascara20,0, posX, posY,escala,escala,0,c_white,1)  break
		case 21: draw_sprite_ext(spr_mascara21,0, posX, posY,escala,escala,0,c_white,1)  break
		case 22: draw_sprite_ext(spr_mascara22,0, posX, posY,escala,escala,0,c_white,1)  break
		//case 23: draw_sprite_ext(spr_mascara23,0, posX, posY,escala,escala,0,c_white,1)  break
		case 24: draw_sprite_ext(spr_mascara24,0, posX, posY,escala,escala,0,c_white,1)  break
		case 25: draw_sprite_ext(spr_mascara25,0, posX, posY,escala,escala,0,c_white,1)  break
		case 26: draw_sprite_ext(spr_mascara26,0, posX, posY,escala,escala,0,c_white,1)  break
		case 27: draw_sprite_ext(spr_mascara27,0, posX, posY,escala,escala,0,c_white,1)  break
		case 28: draw_sprite_ext(spr_mascara28,0, posX, posY,escala,escala,0,c_white,1)  break
		case 29: draw_sprite_ext(spr_mascara29,0, posX, posY,escala,escala,0,c_white,1)  break
		case 30: draw_sprite_ext(spr_mascara30,0, posX, posY,escala,escala,0,c_white,1)  break
		case 31: draw_sprite_ext(spr_mascara31,0, posX, posY,escala,escala,0,c_white,1)  break
		case 32: draw_sprite_ext(spr_mascara23,0, posX, posY,escala,escala,0,c_white,1)  break
		case 33: draw_sprite_ext(spr_mascara33,0, posX, posY,escala,escala,0,c_white,1)  break
		case 34: draw_sprite_ext(spr_mascara32,0, posX, posY,escala,escala,0,c_white,1)  break
		//case 35: draw_sprite_ext(spr_mascara44,0, posX, posY,escala,escala,0,c_white,1)  break
		case 36: draw_sprite_ext(spr_mascara36,0, posX, posY,escala,escala,0,c_white,1)  break
		case 37: draw_sprite_ext(spr_mascara37,0, posX, posY,escala,escala,0,c_white,1)  break
		case 38: draw_sprite_ext(spr_mascara38,0, posX, posY,escala,escala,0,c_white,1)  break
		case 39: draw_sprite_ext(spr_mascara39,0, posX, posY,escala,escala,0,c_white,1)  break
		case 40: draw_sprite_ext(spr_mascara40,0, posX, posY,escala,escala,0,c_white,1)  break
		case 41: draw_sprite_ext(spr_mascara41,0, posX, posY,escala,escala,0,c_white,1)  break
		case 42: draw_sprite_ext(spr_mascara42,0, posX, posY,escala,escala,0,c_white,1)  break
		case 43: draw_sprite_ext(spr_mascara43,0, posX, posY,escala,escala,0,c_white,1)  break
		case 44: draw_sprite_ext(spr_mascara44,0, posX, posY,escala,escala,0,c_white,1)  break
		case 45: draw_sprite_ext(spr_mascara45,0, posX, posY,escala,escala,0,c_white,1)  break
		case 46: draw_sprite_ext(spr_mascara46,0, posX, posY,escala,escala,0,c_white,1)  break
		//case 47: draw_sprite_ext(spr_mascara47,0, posX, posY,escala,escala,0,c_white,1)  break
		case 48: draw_sprite_ext(spr_mascara47,0, posX, posY,escala,escala,0,c_white,1)  break
		case 49: draw_sprite_ext(spr_mascara48,0, posX, posY,escala,escala,0,c_white,1)  break
	}


}
