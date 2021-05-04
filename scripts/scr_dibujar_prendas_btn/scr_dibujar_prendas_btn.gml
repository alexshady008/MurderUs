function scr_dibujar_prendas_btn(argument0, argument1, argument2) {
	var tipo = argument0
	var posX = argument1
	var posY = argument2

	switch(tipo){
		case 0: 
			draw_set_halign(fa_center)
			draw_set_valign(fa_middle)
			draw_set_font(fnt_chica)
			draw_text_outline2("NONE",posX,posY+15,c_black,1,1,c_white) 
		break
		case 1: draw_sprite_ext(spr_skin1_parado,0, posX, posY,1,1,0,c_white,1)  break
		case 2: draw_sprite_ext(spr_skin2_parado,0, posX, posY,1,1,0,c_white,1)  break
		case 3: draw_sprite_ext(spr_skin3_parado,0, posX, posY,1,1,0,c_white,1)  break
		case 4: draw_sprite_ext(spr_skin4_parado,0, posX, posY,1,1,0,c_white,1)  break
		case 5: draw_sprite_ext(spr_skin5_parado,0, posX, posY,1,1,0,c_white,1)  break
		case 6: draw_sprite_ext(spr_skin6_parado,0, posX, posY,1,1,0,c_white,1)  break
		case 7: draw_sprite_ext(spr_skin7_parado,0, posX, posY,1,1,0,c_white,1)  break
		case 8: draw_sprite_ext(spr_skin8_parado,0, posX, posY,1,1,0,c_white,1)  break
		case 9: draw_sprite_ext(spr_skin9_parado,0, posX, posY,1,1,0,c_white,1)  break
		case 10: draw_sprite_ext(spr_skin10_parado,0, posX, posY,1,1,0,c_white,1)  break
		case 11: draw_sprite_ext(spr_skin11_parado,0, posX, posY,1,1,0,c_white,1)  break
		case 12: draw_sprite_ext(spr_skin12_parado,0, posX, posY,1,1,0,c_white,1)  break
		case 13: draw_sprite_ext(spr_skin13_parado,0, posX, posY,1,1,0,c_white,1)  break
		case 14: draw_sprite_ext(spr_skin14_parado,0, posX, posY,1,1,0,c_white,1)  break
		case 15: draw_sprite_ext(spr_skin15_parado,0, posX, posY,1,1,0,c_white,1)  break
		case 16: draw_sprite_ext(spr_skin16_parado,0, posX, posY,1,1,0,c_white,1)  break
	}


}
