function scr_dibuja_mascota_parada(argument0, argument1, argument2, argument3, argument4, argument5) {
	var mascota = argument0
	var xx = argument1
	var yy = argument2
	var alfa = argument3
	var escala = argument4   //1.5
	var colorPers = argument5

	switch(mascota)
	{
		case 1: var colorMasc=scr_crear_color(colorPers) draw_sprite_ext(spr_mascota01,0,xx+(24*escala),yy,escala,escala,0,colorMasc,alfa)  break
		case 2: draw_sprite_ext(spr_mascota02,0,xx+(34*escala),yy+(30*escala),escala,escala,0,c_white,alfa)  break
		case 3: draw_sprite_ext(spr_mascota03,0,xx+(30*escala),yy-(16*escala),escala,escala,0,c_white,alfa)  break
		case 4: var colorMasc=scr_crear_color(colorPers) draw_sprite_ext(spr_mascota04_parada,0,xx+(30*escala),yy+(30*escala),escala,escala,0,colorMasc,alfa) break
		case 5: draw_sprite_ext(spr_mascota05_corriendo,0,xx+(24*escala),yy,escala,escala,0,c_white,alfa)  break
		case 6: var colorMasc=scr_crear_color(colorPers) draw_sprite_ext(spr_mascota06_corriendo,0,xx+(34*escala),yy+(38*escala),escala,escala,0,colorMasc,alfa)  break
		case 7: draw_sprite_ext(spr_mascota07_corriendo,0,xx+(34*escala),yy+(35*escala),escala,escala,0,c_white,alfa)  break
		case 8: draw_sprite_ext(spr_mascota08_corriendo,0,xx+(34*escala),yy+(35*escala),escala,escala,0,c_white,alfa)  break
		case 9: draw_sprite_ext(spr_mascota09_corriendo,0,xx+(34*escala),yy+(35*escala),escala,escala,0,c_white,alfa)  break
		case 10: draw_sprite_ext(spr_mascota10_corriendo,0,xx+(34*escala),yy,escala,escala,0,c_white,alfa)  break
		case 11: draw_sprite_ext(spr_mascota11_corriendo,0,xx+(38*escala),yy+(38*escala),escala,escala,0,c_white,alfa)  break
		case 12: draw_sprite_ext(spr_mascota12_corriendo,0,xx+(34*escala),yy-(16*escala),escala,escala,0,c_white,alfa)  break
		case 13: draw_sprite_ext(spr_mascota13_corriendo,0,xx+(38*escala),yy+(38*escala),escala,escala,0,c_white,alfa)  break
		case 14: draw_sprite_ext(spr_mascota14_corriendo,0,xx+(30*escala),yy-(16*escala),escala,escala,0,c_white,alfa)  break
		case 15: draw_sprite_ext(spr_mascota15_corriendo,0,xx+(34*escala),yy+(34*escala),escala,escala,0,c_white,alfa)  break
		case 16: draw_sprite_ext(spr_mascota16_corriendo,0,xx+(34*escala),yy+(35*escala),escala,escala,0,c_white,alfa)  break
		case 17: draw_sprite_ext(spr_mascota17_corriendo,0,xx+(24*escala),yy,escala,escala,0,c_white,alfa)  break
		case 18: draw_sprite_ext(spr_mascota18_corriendo,0,xx+(34*escala),yy+(35*escala),escala,escala,0,c_white,alfa)  break
		case 19: draw_sprite_ext(spr_mascota19_corriendo,0,xx+(34*escala),yy,escala,escala,0,c_white,alfa)  break
		case 20: draw_sprite_ext(spr_mascota20_corriendo,0,xx+(34*escala),yy,escala,escala,0,c_white,alfa)  break
		case 21: draw_sprite_ext(spr_mascota21_corriendo,0,xx+(34*escala),yy+(35*escala),escala,escala,0,c_white,alfa)  break
		case 22: draw_sprite_ext(spr_mascota22_corriendo,0,xx+(34*escala),yy+(35*escala),escala,escala,0,c_white,alfa)  break
		///
		case 24: draw_sprite_ext(spr_mascota24_corriendo,0,xx+(34*escala),yy+(34*escala),escala,escala,0,c_white,alfa)  break
		case 25: draw_sprite_ext(spr_mascota25_corriendo,0,xx+(28*escala),yy+(38*escala),escala,escala,0,c_white,alfa)  break
		case 26: draw_sprite_ext(spr_mascota26_corriendo,0,xx+(34*escala),yy+(35*escala),escala,escala,0,c_white,alfa)  break
		case 27: draw_sprite_ext(spr_mascota27_corriendo,0,xx+(28*escala),yy+(38*escala),escala,escala,0,c_white,alfa)  break
		case 28: draw_sprite_ext(spr_mascota28_corriendo,0,xx+(30*escala),yy,escala,escala,0,c_white,alfa)  break
		case 29: draw_sprite_ext(spr_mascota29_corriendo,0,xx+(34*escala),yy,escala,escala,0,c_white,alfa)  break
		case 30: draw_sprite_ext(spr_mascota30_corriendo,0,xx+(34*escala),yy+(34*escala),escala,escala,0,c_white,alfa)  break
		case 31: draw_sprite_ext(spr_mascota31_corriendo,0,xx+(34*escala),yy+(30*escala),escala,escala,0,c_white,alfa)  break
		case 32: draw_sprite_ext(spr_mascota32_corriendo,0,xx+(38*escala),yy+(38*escala),escala,escala,0,c_white,alfa)  break
		case 33: draw_sprite_ext(spr_mascota33_corriendo,0,xx+(30*escala),yy,escala,escala,0,c_white,alfa)  break
		case 34: draw_sprite_ext(spr_mascota23_corriendo,0,xx+(30*escala),yy,escala,escala,0,c_white,alfa)  break
		//
	}



}
