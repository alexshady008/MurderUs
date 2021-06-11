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
			// Organizacion 1
			case 1: draw_sprite(spr_fondo_organizacion_1,0,global.cam_x+640,global.cam_y+360) break
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
		switch(os_get_language()) {
			case "es": draw_text_outline("ORDENAR TODOS LOS OBJETOS EN LÍNEAS",posX,posY,c_black,1,1,c_white) break;
			case "pt": draw_text_outline("CLASSIFIQUE TODOS OS OBJETOS EM LINHAS",posX,posY,c_black,1,1,c_white) break;
			case "it": draw_text_outline("ORDINA TUTTI GLI OGGETTI IN LINEE",posX,posY,c_black,1,1,c_white) break;
			case "ru": draw_set_font(fnt_normal_ru) draw_text_outline("СОРТИРОВАТЬ ВСЕ ОБЪЕКТЫ ПО ЛИНИЯМ",posX,posY,c_black,1,1,c_white) break;
			default: draw_text_outline("SORT ALL OBJECTS IN LINES",posX,posY,c_black,1,1,c_white) break;
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