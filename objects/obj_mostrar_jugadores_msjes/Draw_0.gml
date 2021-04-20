/// @description Dibuja la interfaz
// Puede escribir su código en este editor

#region Dibuja la pantalla negra
	draw_set_color(c_black)
	draw_set_alpha(0.65)
	draw_rectangle(cam_x,cam_y,cam_x+cam_ancho,cam_y+cam_alto,0)
	draw_set_alpha(1)
#endregion



#region Dibuja el titulo
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	draw_set_font(fnt_grande)
	var posX = cam_x+640
	var posY = cam_y+50
	
	switch(global.etapa_msjs)
	{
		case 2:
			switch(os_get_language()) {
				case "es": draw_text_outline("ELIGE AL JUGADOR (A)",posX,posY,c_black,1,1,c_white) break;
				case "pt": draw_text_outline("QUEM É O ASSASSINO?",posX,posY,c_black,1,1,c_white) break;
				case "it": draw_text_outline("CHI È L'ASSASSINO?",posX,posY,c_black,1,1,c_white) break;
				case "ru": draw_set_font(fnt_grande_ru) draw_text_outline("КТО УБИЙЦА?",posX,posY,c_black,1,1,c_white) break;
				default: draw_text_outline("WHO IS THE MURDERER?",posX,posY,c_black,1,1,c_white) break;
			}
		break
		
		case 3:
			switch(os_get_language()) {
				case "es": draw_text_outline("ELIGE AL JUGADOR (B)",posX,posY,c_black,1,1,c_white) break;
				case "pt": draw_text_outline("QUEM É O ASSASSINO?",posX,posY,c_black,1,1,c_white) break;
				case "it": draw_text_outline("CHI È L'ASSASSINO?",posX,posY,c_black,1,1,c_white) break;
				case "ru": draw_set_font(fnt_grande_ru) draw_text_outline("КТО УБИЙЦА?",posX,posY,c_black,1,1,c_white) break;
				default: draw_text_outline("WHO IS THE MURDERER?",posX,posY,c_black,1,1,c_white) break;
			}
		break
	}
#endregion