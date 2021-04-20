/// @description Dibuja la interfaz
// Puede escribir su código en este editor
if (global.estadoJuego == "discusion")
{
	#region Propiedades de la camara
		cam_x = camera_get_view_x(view_camera[0]) 
		cam_y = camera_get_view_y(view_camera[0]) 
		cam_ancho = camera_get_view_width(view_camera[0])
		cam_alto = camera_get_view_height(view_camera[0])
	#endregion


	draw_set_alpha(1)
	draw_rectangle_color(cam_x,cam_y,cam_x+cam_ancho,cam_y+cam_alto,c_black,c_black,c_black,c_black,false)
	draw_set_alpha(1)
	
	#region Dibuja el titulo
		draw_set_halign(fa_center)
		draw_set_valign(fa_middle)
		draw_set_font(fnt_grande)
		var posX = cam_x+640
		var posY = cam_y+50
		switch(os_get_language()) {
			case "es": draw_text_outline("¿QUIÉN ES EL ASESINO?",posX,posY,c_black,1,1,c_white) break;
			case "pt": draw_text_outline("QUEM É O ASSASSINO?",posX,posY,c_black,1,1,c_white) break;
			case "it": draw_text_outline("CHI È L'ASSASSINO?",posX,posY,c_black,1,1,c_white) break;
			case "ru": draw_set_font(fnt_grande_ru) draw_text_outline("КТО УБИЙЦА?",posX,posY,c_black,1,1,c_white) break;
			default: draw_text_outline("WHO IS THE MURDERER?",posX,posY,c_black,1,1,c_white) break;
		}
	#endregion
	
	#region Dibuja el Subtitulo
		draw_set_font(fnt_normal)
		var posX = cam_x+640
		var posY2 = cam_y+650

		if (global.comenzarVotacion>0){
			var contador = global.comenzarVotacion
			switch(os_get_language()) {
				case "es": draw_text_outline("Comenzar a votar en: "+string(contador),posX,posY2,c_black,1,1,c_white) break;
				case "pt": draw_text_outline("Comece a votar em: "+string(contador),posX,posY2,c_black,1,1,c_white) break;
				case "it": draw_text_outline("Inizia a votare alle: "+string(contador),posX,posY2,c_black,1,1,c_white) break;
				case "ru": draw_set_font(fnt_normal_ru) draw_text_outline("Начать голосование в: "+string(contador),posX,posY2,c_black,1,1,c_white) break;
				default: draw_text_outline("Start voting at: "+string(contador),posX,posY2,c_black,1,1,c_white) break;
			}
		}
		else {
			var contador = global.contadorDiscusion
			switch(os_get_language()) {
				case "es": draw_text_outline("Finalizar votación en: "+string(contador),posX,posY2,c_black,1,1,c_white) break;
				case "pt": draw_text_outline("Fim da votação às: "+string(contador),posX,posY2,c_black,1,1,c_white) break;
				case "it": draw_text_outline("Termina la votazione alle: "+string(contador),posX,posY2,c_black,1,1,c_white) break;
				case "ru": draw_set_font(fnt_normal_ru) draw_text_outline("Завершить голосование на: "+string(contador),posX,posY2,c_black,1,1,c_white) break;
				default: draw_text_outline("End voting in: "+string(contador),posX,posY2,c_black,1,1,c_white) break;
			}
		}
		
		/*
		if (global.contr_votacion==false){
			switch(os_get_language()) {
				case "es": draw_text_outline("Comenzar a votar en: "+string(contador2),posX,posY2,c_black,1,1,c_white) break;
				case "pt": draw_text_outline("Comece a votar em: "+string(contador2),posX,posY2,c_black,1,1,c_white) break;
				case "it": draw_text_outline("Inizia a votare alle: "+string(contador2),posX,posY2,c_black,1,1,c_white) break;
				case "ru": draw_set_font(fnt_normal_ru) draw_text_outline("Начать голосование в: "+string(contador2),posX,posY2,c_black,1,1,c_white) break;
				default: draw_text_outline("Start voting in: "+string(contador2),posX,posY2,c_black,1,1,c_white) break;
			}
		}
		else if (global.contr_votacion==true){
			switch(os_get_language()) {
				case "es": draw_text_outline("Finalizar votación en: "+string(contador),posX,posY2,c_black,1,1,c_white) break;
				case "pt": draw_text_outline("Fim da votação às: "+string(contador),posX,posY2,c_black,1,1,c_white) break;
				case "it": draw_text_outline("Termina la votazione alle: "+string(contador),posX,posY2,c_black,1,1,c_white) break;
				case "ru": draw_set_font(fnt_normal_ru) draw_text_outline("Завершить голосование на: "+string(contador),posX,posY2,c_black,1,1,c_white) break;
				default: draw_text_outline("End voting in: "+string(contador),posX,posY2,c_black,1,1,c_white) break;
			}
		}
		*/
	#endregion
	
}	