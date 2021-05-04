/// @description Dibuja las palabras del popup
// Puede escribir su código en este editor


// Dibuja la pantalla negra
draw_set_color(c_black)
draw_set_alpha(0.65)
draw_rectangle(0,0,room_width,room_height,0)
draw_set_alpha(1)

// DIbuja el campo
draw_sprite_ext(spr_popup_grande,0,x,y,1,1,0,c_white,1)

#region Dibuja el titulo del pop up
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	draw_set_font(fnt_grande)
	var posY = y-200
	switch(os_get_language()) {
		case "es": draw_text_outline("CONFIGURACION",x,posY,c_black,1,1,c_white) break;
		case "pt": draw_text_outline("CONFIGURAÇÃO",x,posY,c_black,1,1,c_white) break;
		case "it": draw_text_outline("AMBIENTAZIONE",x,posY,c_black,1,1,c_white) break;
		case "ru": draw_set_font(fnt_grande_ru) draw_text_outline("НАСТРОЙКА",x,posY,c_black,1,1,c_white) break;
		default: draw_text_outline("SETTING",x,posY,c_black,1,1,c_white) break;
	}
#endregion


#region Dibuja el subtitulo del servidor
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	draw_set_font(fnt_grande)
	var posY = y-110
	switch(os_get_language()) {
		case "es": draw_text_outline("SERVIDOR",x,posY,c_black,1,1,c_white) break;
		case "pt": draw_text_outline("SERVER",x,posY,c_black,1,1,c_white) break;
		case "it": draw_text_outline("SERVER",x,posY,c_black,1,1,c_white) break;
		case "ru": draw_set_font(fnt_grande_ru) draw_text_outline("СЕРВЕР",x,posY,c_black,1,1,c_white) break;
		default: draw_text_outline("SERVER",x,posY,c_black,1,1,c_white) break;
	}
#endregion


#region Dibuja el subtitulo de las  luces
/*	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	draw_set_font(fnt_grande)
	var posY = y+70
	switch(os_get_language()) {
		case "es": draw_text_outline("SOMBRAS",x,posY,c_black,1,1,c_white) break;
		case "pt": draw_text_outline("TONS",x,posY,c_black,1,1,c_white) break;
		case "it": draw_text_outline("SFUMATURE",x,posY,c_black,1,1,c_white) break;
		case "ru": draw_set_font(fnt_grande_ru) draw_text_outline("ОТТЕНКИ",x,posY,c_black,1,1,c_white) break;
		default: draw_text_outline("SHADES",x,posY,c_black,1,1,c_white) break;
	}*/
#endregion