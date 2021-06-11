/// @description Dibuja la interfaz
// Puede escribir su código en este editor

#region Dibuja el fondo de la pantalla negra
	draw_set_alpha(global.alfaFondo)
	draw_rectangle_color(global.cam_x,global.cam_y,global.cam_x+global.cam_ancho,global.cam_y+global.cam_alto,c_black, c_black, c_black, c_black, false)
	draw_set_alpha(1)
#endregion


#region Dibuja el fondo
	if (tipo!=false){
		switch(tipo){
			// Analisis 1
			case 1: draw_sprite(spr_fondo_analisis_1_1,0,global.cam_x+640,global.cam_y+360) break
			// Analisis 2
			case 2: draw_sprite(spr_fondo_analisis_1_2,0,global.cam_x+640,global.cam_y+360) break
			// Analisis 3
			case 3: draw_sprite(spr_fondo_analisis_2,0,global.cam_x+640,global.cam_y+360) break
		}
	}
#endregion


#region DIbuja el titulo
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	var posX =global.cam_x+640
	var posY = global.cam_y+46
		
	if !(global.tarea_completada)
	{
		draw_set_font(fnt_grande)
		if (signo_elegido==noone){
			if !(mezclar){
				switch(os_get_language()) {
					case "es": draw_text_outline("ESPERAR A QUE SE PREPARE EL ANALISIS",posX,posY,c_black,1,1,c_white) break;
					case "pt": draw_text_outline("ESPERE QUE A ANÁLISE SEJA PREPARADA",posX,posY,c_black,1,1,c_white) break;
					case "it": draw_text_outline("ATTENDERE CHE SIA PREPARATA L'ANALISI",posX,posY,c_black,1,1,c_white) break;
					case "ru": draw_set_font(fnt_normal_ru) draw_text_outline("ПОДОЖДИТЕ ПОДГОТОВКУ АНАЛИЗА",posX,posY,c_black,1,1,c_white) break;
					default: draw_text_outline("WAIT FOR THE ANALYSIS TO BE PREPARED",posX,posY,c_black,1,1,c_white) break;
				}
			}
			else {
				switch(os_get_language()) {
					case "es": draw_text_outline("MOVER EL ANALISIS CON EL DEDO",posX,posY,c_black,1,1,c_white) break;
					case "pt": draw_text_outline("MOVA A ANÁLISE COM SEU DEDO",posX,posY,c_black,1,1,c_white) break;
					case "it": draw_text_outline("SPOSTA L'ANALISI CON IL DITO",posX,posY,c_black,1,1,c_white) break;
					case "ru": draw_set_font(fnt_normal_ru) draw_text_outline("ПЕРЕМЕСТИТЕ АНАЛИЗ ПАЛЬЦЕМ",posX,posY,c_black,1,1,c_white) break;
					default: draw_text_outline("MOVE THE ANALYSIS WITH YOUR FINGER",posX,posY,c_black,1,1,c_white) break;
				}
			}
		}
		else {
			switch(os_get_language()) {
				case "es": draw_text_outline("ELEGIR EL SIGNO CORRECTO",posX,posY,c_black,1,1,c_white) break;
				case "pt": draw_text_outline("ESCOLHA O SINAL CORRETO",posX,posY,c_black,1,1,c_white) break;
				case "it": draw_text_outline("SCEGLI IL SEGNO CORRETTO",posX,posY,c_black,1,1,c_white) break;
				case "ru": draw_set_font(fnt_normal_ru) draw_text_outline("ВЫБЕРИТЕ ПРАВИЛЬНЫЙ ЗНАК",posX,posY,c_black,1,1,c_white) break;
				default: draw_text_outline("CHOOSE THE CORRECT SIGN",posX,posY,c_black,1,1,c_white) break;
			}
		}
		
	}	
	else 
	{
		draw_set_font(fnt_grande)
		switch(os_get_language()) {
			case "es": draw_text_outline("¡TAREA TERMINADA!",posX,posY,c_black,1,1,c_white) break;
			case "pt": draw_text_outline("TAREFA COMPLETA!",posX,posY,c_black,1,1,c_white) break;
			case "it": draw_text_outline("COMPITO COMPLETATO!",posX,posY,c_black,1,1,c_white) break;
			case "ru": draw_set_font(fnt_grande_ru) draw_text_outline("ЗАДАЧА ВЫПОЛНЕНА!",posX,posY,c_black,1,1,c_white) break;
			default: draw_text_outline("TASK COMPLETED!",posX,posY,c_black,1,1,c_white) break;
		}
	}
#endregion


#region Dibuja el subtitulo
	var posX =global.cam_x+640
	var posY = global.cam_y+100
	draw_set_font(fnt_normal)
	switch(os_get_language()) {
		case "es": draw_text_outline("SIGNOS COMPLETADOS "+string(cant_veces_mezclado)+" / "+string(max_veces_mesclar),posX,posY,c_black,1,1,c_white) break;
		case "pt": draw_text_outline("SINAIS CONCLUÍDOS "+string(cant_veces_mezclado)+" / "+string(max_veces_mesclar),posX,posY,c_black,1,1,c_white) break;
		case "it": draw_text_outline("SEGNI COMPLETI "+string(cant_veces_mezclado)+" / "+string(max_veces_mesclar),posX,posY,c_black,1,1,c_white) break;
		case "ru": draw_set_font(fnt_normal_ru) draw_text_outline("ЗАВЕРШЕННЫЕ ЗНАКИ "+string(cant_veces_mezclado)+" / "+string(max_veces_mesclar),posX,posY,c_black,1,1,c_white) break;
		default: draw_text_outline("SIGNS COMPLETED "+string(cant_veces_mezclado)+" / "+string(max_veces_mesclar),posX,posY,c_black,1,1,c_white) break;
	}
#endregion