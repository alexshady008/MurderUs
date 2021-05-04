function scr_dibuja_prenda_jug_parado(prenda, subimg, posX, posY, alfa, escalaX, escalaY, contr_rotacion, contr_color) {
	/*var prenda = argument0
	var subimg = argument1
	var posX = argument2
	var posY = argument3
	var alfa = argument4
	var escalaX = argument5   //1.5
	var escalaY = argument6   //1.5*/
	// Contr la rotacion
	if (is_undefined(contr_rotacion)) var rotacion = 0
	else var rotacion = contr_rotacion
	// Contr el color
	var color = c_white
	if !(is_undefined(contr_color))  color = contr_color

	switch(prenda)
	{
		case 1: draw_sprite_ext(spr_skin1_parado,subimg,posX,posY,escalaX,escalaY,rotacion,color,alfa)  break
		case 2: draw_sprite_ext(spr_skin2_parado,subimg,posX,posY,escalaX,escalaY,rotacion,color,alfa)  break
		case 3: draw_sprite_ext(spr_skin3_parado,subimg,posX,posY,escalaX,escalaY,rotacion,color,alfa)  break
		case 4: draw_sprite_ext(spr_skin4_parado,subimg,posX,posY,escalaX,escalaY,rotacion,color,alfa)  break
		case 5: draw_sprite_ext(spr_skin5_parado,subimg,posX,posY,escalaX,escalaY,rotacion,color,alfa)  break
		case 6: draw_sprite_ext(spr_skin6_parado,subimg,posX,posY,escalaX,escalaY,rotacion,color,alfa)  break
		case 7: draw_sprite_ext(spr_skin7_parado,subimg,posX,posY,escalaX,escalaY,rotacion,color,alfa)  break
		case 8: draw_sprite_ext(spr_skin8_parado,subimg,posX,posY,escalaX,escalaY,rotacion,color,alfa)  break
		case 9: draw_sprite_ext(spr_skin9_parado,subimg,posX,posY,escalaX,escalaY,rotacion,color,alfa)  break
		case 10: draw_sprite_ext(spr_skin10_parado,subimg,posX,posY,escalaX,escalaY,rotacion,color,alfa)  break
		case 11: draw_sprite_ext(spr_skin11_parado,subimg,posX,posY,escalaX,escalaY,rotacion,color,alfa)  break
		case 12: draw_sprite_ext(spr_skin12_parado,subimg,posX,posY,escalaX,escalaY,rotacion,color,alfa)  break
		case 13: draw_sprite_ext(spr_skin13_parado,subimg,posX,posY,escalaX,escalaY,rotacion,color,alfa)  break
		case 14: draw_sprite_ext(spr_skin14_parado,subimg,posX,posY,escalaX,escalaY,rotacion,color,alfa)  break
		case 15: draw_sprite_ext(spr_skin15_parado,subimg,posX,posY,escalaX,escalaY,rotacion,color,alfa)  break
		case 16: draw_sprite_ext(spr_skin16_parado,subimg,posX,posY,escalaX,escalaY,rotacion,color,alfa)  break
	}



}
