function scr_dibuja_accesorio_jug(argument0, argument1, argument2, argument3, argument4, argument5) {
	var accesorio = argument0
	var xx = argument1
	var yy = argument2
	var alfa = argument3
	var escala_x = argument4   //1.5
	var escala_y = argument5  //1.5

	switch(accesorio)
	{
		case 1: draw_sprite_ext(spr_mascara01,0,xx-(4*escala_x),yy-(21*escala_y),escala_x,escala_y,0,c_white,alfa)  break
		case 2: draw_sprite_ext(spr_mascara02,0,xx-(4*escala_x),yy-(14*escala_y),escala_x,escala_y,0,c_white,alfa)  break
		case 3: draw_sprite_ext(spr_mascara03,0,xx-(7*escala_x),yy-(23*escala_y),escala_x,escala_y,0,c_white,alfa)  break
		case 4: draw_sprite_ext(spr_mascara04,0,xx-(3*escala_x),yy-(21*escala_y),escala_x,escala_y,0,c_white,alfa)  break
		case 5: draw_sprite_ext(spr_mascara05,0,xx-(1*escala_x),yy-(10*escala_y),escala_x,escala_y,0,c_white,alfa)  break
		case 6: draw_sprite_ext(spr_mascara06,0,xx-(7*escala_x),yy-(23*escala_y),escala_x,escala_y,0,c_white,alfa)  break
		case 7: draw_sprite_ext(spr_mascara07,0,xx-(0*escala_x),yy-(16*escala_y),escala_x,escala_y,0,c_white,alfa)  break
		case 8: draw_sprite_ext(spr_mascara08,0,xx-(10*escala_x),yy-(18*escala_y),escala_x,escala_y,0,c_white,alfa)  break
		case 9: draw_sprite_ext(spr_mascara09,0,xx-(3*escala_x),yy-(21*escala_y),escala_x,escala_y,0,c_white,alfa)  break
		case 10: draw_sprite_ext(spr_mascara10,0,xx-(3*escala_x),yy-(21*escala_y),escala_x,escala_y,0,c_white,alfa)  break
		case 11: draw_sprite_ext(spr_mascara11,0,xx-(0*escala_x),yy-(10*escala_y),escala_x,escala_y,0,c_white,alfa)  break
		case 12: draw_sprite_ext(spr_mascara12,0,xx-(8*escala_x),yy-(18*escala_y),escala_x,escala_y,0,c_white,alfa)  break
		case 13: draw_sprite_ext(spr_mascara13,0,xx+(10*escala_x),yy-(23*escala_y),escala_x,escala_y,0,c_white,alfa)  break
		case 14: draw_sprite_ext(spr_mascara14,0,xx-(0*escala_x),yy-(16*escala_y),escala_x,escala_y,0,c_white,alfa)  break
		case 15: draw_sprite_ext(spr_mascara15,0,xx-(0*escala_x),yy-(16*escala_y),escala_x,escala_y,0,c_white,alfa)  break
		case 16: draw_sprite_ext(spr_mascara16,0,xx+(3*escala_x),yy-(23*escala_y),escala_x,escala_y,0,c_white,alfa)  break
		case 17: draw_sprite_ext(spr_mascara17,0,xx-(7*escala_x),yy-(23*escala_y),escala_x,escala_y,0,c_white,alfa)  break
		case 18: draw_sprite_ext(spr_mascara18,0,xx-(7*escala_x),yy-(23*escala_y),escala_x,escala_y,0,c_white,alfa)  break
		case 19: draw_sprite_ext(spr_mascara19,0,xx-(8*escala_x),yy-(21*escala_y),escala_x,escala_y,0,c_white,alfa)  break
		case 20: draw_sprite_ext(spr_mascara20,0,xx-(4*escala_x),yy-(23*escala_y),escala_x,escala_y,0,c_white,alfa)  break
		case 21: draw_sprite_ext(spr_mascara21,0,xx,yy-(32*escala_y),escala_x,escala_y,0,c_white,alfa)  break
		case 22: draw_sprite_ext(spr_mascara22,0,xx,yy-(20*escala_y),escala_x,escala_y,0,c_white,alfa)  break
		case 23: draw_sprite_ext(spr_mascara23,0,xx+5,yy-(16*escala_y),escala_x,escala_y,0,c_white,alfa)  break
		case 24: draw_sprite_ext(spr_mascara24,0,xx-(10*escala_x),yy-(10*escala_y),escala_x,escala_y,0,c_white,alfa)  break
		case 25: draw_sprite_ext(spr_mascara25,0,xx-(10*escala_x),yy-(7*escala_y),escala_x,escala_y,0,c_white,alfa)  break
		case 26: draw_sprite_ext(spr_mascara26,0,xx-(8*escala_x),yy-(18*escala_y),escala_x,escala_y,0,c_white,alfa)  break
		case 27: draw_sprite_ext(spr_mascara27,0,xx-(10*escala_x),yy-(8*escala_y),escala_x,escala_y,0,c_white,alfa)  break
		case 28: draw_sprite_ext(spr_mascara28,0,xx+(17*escala_x),yy-(30*escala_y),escala_x,escala_y,0,c_white,alfa)  break
		case 29: draw_sprite_ext(spr_mascara29,0,xx-(8*escala_x),yy-(18*escala_y),escala_x,escala_y,0,c_white,alfa)  break
		case 30: draw_sprite_ext(spr_mascara30,0,xx-(10*escala_x),yy-(8*escala_y),escala_x,escala_y,0,c_white,alfa)  break
		case 31: draw_sprite_ext(spr_mascara31,0,xx,yy-(18*escala_y),escala_x,escala_y,0,c_white,alfa)  break
		case 32: draw_sprite_ext(spr_mascara32,0,xx+5,yy-(16*escala_y),escala_x,escala_y,0,c_white,alfa)  break
		case 33: draw_sprite_ext(spr_mascara33,0,xx,yy-(3*escala_y),escala_x,escala_y,0,c_white,alfa)  break
		case 34: draw_sprite_ext(spr_mascara34,0,xx-(3*escala_x),yy-(16*escala_y),escala_x,escala_y,0,c_white,alfa)  break
		case 35: draw_sprite_ext(spr_mascara35,0,xx,yy-(0*escala_y),escala_x,escala_y,0,c_white,alfa)  break
		case 36: draw_sprite_ext(spr_mascara36,0,xx,yy+(7*escala_y),escala_x,escala_y,0,c_white,alfa)  break
		case 37: draw_sprite_ext(spr_mascara37,0,xx,yy+(7*escala_y),escala_x,escala_y,0,c_white,alfa)  break
		case 38: draw_sprite_ext(spr_mascara38,0,xx,yy-(0*escala_y),escala_x,escala_y,0,c_white,alfa)  break
		case 39: draw_sprite_ext(spr_mascara39,0,xx,yy+(5*escala_y),escala_x,escala_y,0,c_white,alfa)  break
		case 40: draw_sprite_ext(spr_mascara40,0,xx,yy+(0*escala_y),escala_x,escala_y,0,c_white,alfa)  break
		case 41: draw_sprite_ext(spr_mascara41,0,xx,yy+(0*escala_y),escala_x,escala_y,0,c_white,alfa)  break
		case 42: draw_sprite_ext(spr_mascara42,0,xx-(3*escala_x),yy+(7*escala_y),escala_x,escala_y,0,c_white,alfa)  break
		case 43: draw_sprite_ext(spr_mascara43,0,xx-(3*escala_x),yy+(7*escala_y),escala_x,escala_y,0,c_white,alfa)  break
		case 44: draw_sprite_ext(spr_mascara44,0,xx,yy-(0*escala_y),escala_x,escala_y,0,c_white,alfa)  break
		case 45: draw_sprite_ext(spr_mascara45,0,xx,yy-(5*escala_y),escala_x,escala_y,0,c_white,alfa)  break
		case 46: draw_sprite_ext(spr_mascara46,0,xx,yy-(0*escala_y),escala_x,escala_y,0,c_white,alfa)  break
		case 47: draw_sprite_ext(spr_mascara47,0,xx,yy+(7*escala_y),escala_x,escala_y,0,c_white,alfa)  break
		case 48: draw_sprite_ext(spr_mascara48,0,xx,yy+(7*escala_y),escala_x,escala_y,0,c_white,alfa)  break
	}



}
