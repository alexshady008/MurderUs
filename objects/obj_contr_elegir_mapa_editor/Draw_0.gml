/// @description Dibuja la interfaz
// Puede escribir su código en este editor

#region Dibuja el fondo
	draw_set_alpha(0.9)
	draw_rectangle_color(0,0,room_width,room_height,c_black,c_black,c_black,c_black,false)
	draw_set_alpha(1)
#endregion


#region Dibuja el titulo del pop up
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	draw_set_font(fnt_muy_grande)
	var posY = 300
	var posX = room_width/2
	switch(os_get_language()) {
			case "es": draw_text_outline("ELIGE UN MAPA",posX,posY,c_black,1,1,c_white) break;
			case "pt": draw_text_outline("ESCOLHER UM MAPA",posX,posY,c_black,1,1,c_white) break;
			case "it": draw_text_outline("SCEGLI UNA MAPPA",posX,posY,c_black,1,1,c_white) break;
			case "ru": draw_set_font(fnt_grande_ru) draw_text_outline("ВЫБРАТЬ КАРТУ",posX,posY,c_black,1,1,c_white) break;
			default: draw_text_outline("CHOOSE A MAP",posX,posY,c_black,1,1,c_white) break;
		}
#endregion	