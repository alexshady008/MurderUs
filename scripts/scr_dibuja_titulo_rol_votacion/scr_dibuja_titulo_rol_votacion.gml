// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_dibuja_titulo_rol_votacion(posX, posY2){
	#region Dibuja el subtitulo
		if (instance_exists(obj_contr_juego_online)) tipo_jugador_elegido = obj_contr_juego_online.tipo_jugador_elegido
		draw_set_font(fnt_grande)
			
		if (tipo_jugador_elegido=="IMPOSTOR"){
			var color = make_color_rgb(255,97,97)
			var borde = make_color_rgb(150,0,0)
			switch(os_get_language()) {
				case "es": draw_text_outline("¡ERA UN ASESINO!",posX,posY2,c_black,1,1,color) break;
				case "pt": draw_text_outline("ERA UM ASSASSINO!",posX,posY2,c_black,1,1,color) break;
				case "it": draw_text_outline("ERA UN ASSASSINO!",posX,posY2,c_black,1,1,color) break;
				case "ru": draw_set_font(fnt_grande_ru) draw_text_outline("ОН БЫЛ УБИЙЦЕЙ!",posX,posY2,c_black,1,1,color) break;
				default: draw_text_outline("HE WAS A KILLER!",posX,posY2,c_black,1,1,color) break;
			}
		}
		else if (tipo_jugador_elegido=="COMPLICE"){
			var color = make_color_rgb(255,137,31)
			var borde = make_color_rgb(147,66,0)
			switch(os_get_language()) {
				case "es": draw_text_outline("¡ERA A UN CÓMPLICE!",posX,posY2,c_black,1,1,color) break;
				case "pt": draw_text_outline("FUI UM ACOMPLICE!",posX,posY2,c_black,1,1,color) break;
				case "it": draw_text_outline("È STATO SCOPERTO UN COMPLICE!",posX,posY2,c_black,1,1,color) break;
				case "ru": draw_set_font(fnt_grande_ru) draw_text_outline("ОБНАРУЖЕН СОПРОВОДИТЕЛЬ!",posX,posY2,c_black,1,1,color) break;
				default: draw_text_outline("HE WAS AN ACCOMPLICE!",posX,posY2,c_black,1,1,color) break;
			}
		}
		else if (tipo_jugador_elegido=="TRIPULANTE"){
			var color = make_color_rgb(90,220,255)
			var borde = make_color_rgb(0,66,89)
			switch(os_get_language()) {
				case "es": draw_text_outline("¡ERA UN TRIPULANTE!",posX,posY2,c_black,1,1,color) break;
				case "pt": draw_text_outline("ERA UMA TRIPULAÇÃO!",posX,posY2,c_black,1,1,color) break;
				case "it": draw_text_outline("ERO UN EQUIPAGGIO!",posX,posY2,c_black,1,1,color) break;
				case "ru": draw_set_font(fnt_grande_ru) draw_text_outline("ОН НЕ БЫЛ УБИЙЦЕЙ! ",posX,posY2,c_black,1,1,color) break;
				default: draw_text_outline("HE WAS A CREW!",posX,posY2,c_black,1,1,color) break;
			}
		}
		else if (tipo_jugador_elegido=="DETECTIVE"){
			var color = make_color_rgb(119,255,95)
			var borde = make_color_rgb(0,135,0)
			switch(os_get_language()) {
				case "es": draw_text_outline("ERA UN DETECTIVE!",posX,posY2,c_black,1,1,color) break;
				case "pt": draw_text_outline("ERA UM DETETIVE!",posX,posY2,c_black,1,1,color) break;
				case "it": draw_text_outline("HE WAS A DETECTIVE! ",posX,posY2,c_black,1,1,color) break;
				case "ru": draw_set_font(fnt_grande_ru) draw_text_outline("ОН НЕ БЫЛ УБИЙЦЕЙ! ",posX,posY2,c_black,1,1,color) break;
				default: draw_text_outline("HE WAS A DETECTIVE!",posX,posY2,c_black,1,1,color) break;
			}
		}
	#endregion
}