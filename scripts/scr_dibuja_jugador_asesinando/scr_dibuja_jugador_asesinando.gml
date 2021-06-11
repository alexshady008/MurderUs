function scr_dibuja_jugador_asesinando(skin_param, poxY_param, posY_param, frame_param, color_param, animacion_param) {
	var skin = skin_param
	var posX = poxY_param
	var posY = posY_param
	var frame_anim = frame_param
	var color = color_param
	var escala = 1.5

	switch(skin)
	{
		case 1: 
			switch(animacion_param){
				case 1: draw_sprite_ext(spr_pers1_asesinando,frame_anim,posX,posY,-escala,escala,0,color,1)   break
				case 2: draw_sprite_ext(spr_pers1_asesinando2,frame_anim,posX,posY,-escala,escala,0,color,1)   break
				case 3: draw_sprite_ext(spr_pers1_asesinando3,frame_anim,posX,posY,-escala,escala,0,color,1)   break
				case 4: draw_sprite_ext(spr_pers1_asesinando4,frame_anim,posX,posY,-escala,escala,0,color,1)   break
				case 5: draw_sprite_ext(spr_pers1_asesinando5,frame_anim,posX,posY,-escala,escala,0,color,1)   break
				case 6: draw_sprite_ext(spr_pers1_asesinando6,frame_anim,posX,posY,-escala,escala,0,color,1)   break
			}
		break
		case 2: draw_sprite_ext(spr_pers2_asesinando,frame_anim,posX,posY,-escala,escala,0,color,1)  break
		case 3: draw_sprite_ext(spr_pers3_asesinando,frame_anim,posX,posY,-escala,escala,0,color,1)  break
		case 4: draw_sprite_ext(spr_pers4_asesinando,frame_anim,posX,posY,-escala,escala,0,color,1)  break
		case 5: draw_sprite_ext(spr_pers5_asesinando,frame_anim,posX,posY,-escala,escala,0,color,1)  break
		case 6: draw_sprite_ext(spr_pers6_asesinando,frame_anim,posX,posY,-escala,escala,0,color,1)  break
		case 7: draw_sprite_ext(spr_pers7_asesinando,frame_anim,posX,posY,-escala,escala,0,color,1)  break
		case 8: draw_sprite_ext(spr_pers8_asesinando,frame_anim,posX,posY,-escala,escala,0,color,1)  break
		case 9: draw_sprite_ext(spr_pers9_asesinando,frame_anim,posX,posY,-escala,escala,0,color,1)  break
		case 10: draw_sprite_ext(spr_pers10_asesinando,frame_anim,posX,posY,-escala,escala,0,color,1)  break
		case 11: draw_sprite_ext(spr_pers11_asesinando,frame_anim,posX,posY,-escala,escala,0,color,1)  break
		case 12: draw_sprite_ext(spr_pers12_asesinando,frame_anim,posX,posY,-escala,escala,0,color,1)  break
		case 13: draw_sprite_ext(spr_pers13_asesinando,frame_anim,posX,posY,-escala,escala,0,color,1)  break
		case 14: draw_sprite_ext(spr_pers14_asesinando,frame_anim,posX,posY,-escala,escala,0,color,1)  break
		case 15: draw_sprite_ext(spr_pers15_asesinando,frame_anim,posX,posY,-escala,escala,0,color,1)  break
		case 16: draw_sprite_ext(spr_pers16_asesinando,frame_anim,posX,posY,-escala,escala,0,color,1)  break
		case 17: draw_sprite_ext(spr_pers17_asesinando,frame_anim,posX,posY,-escala,escala,0,color,1)  break
		case 18: draw_sprite_ext(spr_pers18_asesinando,frame_anim,posX,posY,-escala,escala,0,color,1)  break
		case 19: draw_sprite_ext(spr_pers19_asesinando,frame_anim,posX,posY,-escala,escala,0,color,1)  break
		case 20: draw_sprite_ext(spr_pers20_asesinando,frame_anim,posX,posY,-escala,escala,0,color,1)  break
		case 21: draw_sprite_ext(spr_pers21_asesinando,0,global.cam_x+640,(global.cam_y+global.cam_alto)-185,1,1,0,c_white,1)  break
		case 22: draw_sprite_ext(spr_pers22_asesinando,frame_anim,posX,posY,-escala,escala,0,color,1)  break
		case 23: draw_sprite_ext(spr_pers23_asesinando,frame_anim,posX,posY,-escala,escala,0,color,1)  break
		case 24: draw_sprite_ext(spr_pers24_asesinando,frame_anim,posX,posY,-escala,escala,0,color,1)  break
		case 25: draw_sprite_ext(spr_pers25_asesinando,frame_anim,posX,posY,-escala,escala,0,color,1)  break
		case 26: draw_sprite_ext(spr_pers26_asesinando,frame_anim,posX,posY,-escala,escala,0,color,1)  break
		case 27: draw_sprite_ext(spr_pers27_asesinando,frame_anim,posX,posY,-escala,escala,0,color,1)  break
		case 28: draw_sprite_ext(spr_pers28_asesinando,frame_anim,posX,posY,-escala,escala,0,color,1)  break
		case 29: draw_sprite_ext(spr_pers29_asesinando,frame_anim,posX,posY,-escala,escala,0,color,1)  break
		case 30: draw_sprite_ext(spr_pers30_asesinando,frame_anim,posX,posY,-escala,escala,0,color,1)  break
		case 31: draw_sprite_ext(spr_pers31_asesinando,frame_anim,posX,posY,-escala,escala,0,color,1)  break
		case 32: draw_sprite_ext(spr_pers32_asesinando,frame_anim,posX,posY,-escala,escala,0,color,1)  break
		case 33: draw_sprite_ext(spr_pers33_asesinando,frame_anim,posX,posY,-escala,escala,0,color,1)  break
		case 34: draw_sprite_ext(spr_pers34_asesinando,frame_anim,posX,posY,-escala,escala,0,color,1)  break
		case 35: draw_sprite_ext(spr_pers35_asesinando,frame_anim,posX,posY,-escala,escala,0,color,1)  break
		case 36: draw_sprite_ext(spr_pers36_asesinando,frame_anim,posX,posY,-escala,escala,0,color,1)  break
	}



}
