function scr_dibujar_mascota_btn(argument0, argument1, argument2, argument3) {
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
		case 1: draw_sprite_ext(spr_mascota01,0, posX, posY,escala,escala,0,color,1)  break
		case 2: draw_sprite_ext(spr_mascota02,0, posX, posY,escala,escala,0,c_white,1)  break
		case 3: draw_sprite_ext(spr_mascota03,0, posX, posY,escala,escala,0,c_white,1)  break
		case 4: draw_sprite_ext(spr_mascota04_parada,0, posX, posY,escala,escala,0,color,1)  break
		case 5: draw_sprite_ext(spr_mascota05_corriendo,0, posX, posY,escala,escala,0,c_white,1)  break
		case 6: draw_sprite_ext(spr_mascota06_corriendo,0, posX, posY,escala,escala,0,color,1)  break
		case 7: draw_sprite_ext(spr_mascota07_corriendo,0, posX, posY,escala,escala,0,c_white,1)  break
		case 8: draw_sprite_ext(spr_mascota08_corriendo,0, posX, posY,escala,escala,0,c_white,1)  break
		case 9: draw_sprite_ext(spr_mascota09_corriendo,0, posX, posY,escala,escala,0,c_white,1)  break
		case 10: draw_sprite_ext(spr_mascota10_corriendo,0, posX, posY,escala,escala,0,c_white,1)  break
		case 11: draw_sprite_ext(spr_mascota11_corriendo,0, posX, posY,escala,escala,0,c_white,1)  break
		case 12: draw_sprite_ext(spr_mascota12_corriendo,0, posX, posY,escala,escala,0,c_white,1)  break
		case 13: draw_sprite_ext(spr_mascota13_corriendo,0, posX, posY,escala,escala,0,c_white,1)  break
		case 14: draw_sprite_ext(spr_mascota14_corriendo,0, posX, posY,escala,escala,0,c_white,1)  break
		case 15: draw_sprite_ext(spr_mascota15_corriendo,0, posX, posY,escala,escala,0,c_white,1)  break
		case 16: draw_sprite_ext(spr_mascota16_corriendo,0, posX, posY,escala,escala,0,c_white,1)  break
		case 17: draw_sprite_ext(spr_mascota17_corriendo,0, posX, posY,escala,escala,0,c_white,1)  break
		case 18: draw_sprite_ext(spr_mascota18_corriendo,0, posX, posY,escala,escala,0,c_white,1)  break
		case 19: draw_sprite_ext(spr_mascota19_corriendo,0, posX, posY,escala,escala,0,c_white,1)  break
		case 20: draw_sprite_ext(spr_mascota20_corriendo,0, posX, posY,escala,escala,0,c_white,1)  break
		case 21: draw_sprite_ext(spr_mascota21_corriendo,0, posX, posY,escala,escala,0,c_white,1)  break
		case 22: draw_sprite_ext(spr_mascota22_corriendo,0, posX, posY,escala,escala,0,c_white,1)  break
		//case 23: draw_sprite_ext(spr_mascota23_corriendo,0, posX, posY,escala,escala,0,c_white,1)  break
		case 24: draw_sprite_ext(spr_mascota24_corriendo,0, posX, posY,escala,escala,0,c_white,1)  break
		case 25: draw_sprite_ext(spr_mascota25_corriendo,0, posX, posY,escala,escala,0,c_white,1)  break
		case 26: draw_sprite_ext(spr_mascota26_corriendo,0, posX, posY,escala,escala,0,c_white,1)  break
		case 27: draw_sprite_ext(spr_mascota27_corriendo,0, posX, posY,escala,escala,0,c_white,1)  break
		case 28: draw_sprite_ext(spr_mascota28_corriendo,0, posX, posY,escala,escala,0,c_white,1)  break
		case 29: draw_sprite_ext(spr_mascota29_corriendo,0, posX, posY,escala,escala,0,c_white,1)  break
		case 30: draw_sprite_ext(spr_mascota30_corriendo,0, posX, posY,escala,escala,0,c_white,1)  break
		case 31: draw_sprite_ext(spr_mascota31_corriendo,0, posX, posY,escala,escala,0,c_white,1)  break
		case 32: draw_sprite_ext(spr_mascota32_corriendo,0, posX, posY,escala,escala,0,c_white,1)  break
		case 33: draw_sprite_ext(spr_mascota33_corriendo,0, posX, posY,escala,escala,0,c_white,1)  break
		case 34: draw_sprite_ext(spr_mascota23_corriendo,0, posX, posY,escala,escala,0,c_white,1)  break
	}


}
