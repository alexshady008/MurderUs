function scr_dibuja_prenda_jug_asesinando(argument0, argument1, argument2, argument3, argument4, argument5, argument6) {
	var prenda = argument0
	var subimg = argument1
	var posX = argument2
	var posY = argument3
	var alfa = argument4
	var escalaX = argument5   //1.5
	var escalaY = argument6   //1.5

	switch(prenda)
	{
		case 1: draw_sprite_ext(spr_skin1_asesinando,subimg,posX,posY,escalaX,escalaY,0,c_white,alfa)  break
		case 2: draw_sprite_ext(spr_skin2_asesinando,subimg,posX,posY,escalaX,escalaY,0,c_white,alfa)  break
		case 3: draw_sprite_ext(spr_skin3_asesinando,subimg,posX,posY,escalaX,escalaY,0,c_white,alfa)  break
		case 4: draw_sprite_ext(spr_skin4_asesinando,subimg,posX,posY,escalaX,escalaY,0,c_white,alfa)  break
		case 5: draw_sprite_ext(spr_skin5_asesinando,subimg,posX,posY,escalaX,escalaY,0,c_white,alfa)  break
		case 6: draw_sprite_ext(spr_skin6_asesinando,subimg,posX,posY,escalaX,escalaY,0,c_white,alfa)  break
	}



}
