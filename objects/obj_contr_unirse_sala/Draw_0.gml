/// @description Dibuja las palabras de la interfaz
// Puede escribir su código en este editor


// Dibuja la pantalla negra
draw_set_color(c_black)
draw_set_alpha(0.65)
draw_rectangle(0,0,room_width,room_height,0)
draw_set_alpha(1)


#region Dibuja el titulo de salas publicas
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	draw_set_font(fnt_grande)
	var posX = 640
	var posY = 50
	switch(os_get_language()) {
		case "es": draw_text_outline("SALAS PUBLICAS",posX,posY,borde,1,1,color) break;
		case "pt": draw_text_outline("JOGOS PÚBLICOS",posX,posY,borde,1,1,color) break;
		case "it": draw_text_outline("GIOCHI PUBBLICI",posX,posY,borde,1,1,color) break;
		case "ru": draw_set_font(fnt_grande_ru) draw_text_outline("ПУБЛИЧНЫЕ ИГРЫ",posX,posY,borde,1,1,color) break;
		default: draw_text_outline("PUBLIC GAMES",posX,posY,borde,1,1,color) break;
	}	
#endregion


#region Dibuja el titulo para escribir el codigo de una sala
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	draw_set_font(fnt_grande)
	var posX = 640
	var posY = 575
	switch(os_get_language()) {
		case "es": draw_text_outline("BUSCA UNA SALA POR CÓDIGO",posX,posY,borde,1,1,color) break;
		case "pt": draw_text_outline("PESQUISAR UM JOGO POR CÓDIGO",posX,posY,borde,1,1,color) break;
		case "it": draw_text_outline("CERCA UN GIOCO PER CODICE",posX,posY,borde,1,1,color) break;
		case "ru": draw_set_font(fnt_grande_ru) draw_text_outline("ПОИСК ИГРЫ ПО КОДУ",posX,posY,borde,1,1,color) break;
		default: draw_text_outline("SEARCH A GAME BY CODE",posX,posY,borde,1,1,color) break;
	}	
#endregion