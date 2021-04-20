/// @description Dibuja la interfaz
// Puede escribir su código en este editor
#region Propiedades de la camara
	cam_x = camera_get_view_x(view_camera[0]) 
	cam_y = camera_get_view_y(view_camera[0]) 
	cam_ancho = camera_get_view_width(view_camera[0])
	cam_alto = camera_get_view_height(view_camera[0])
#endregion


#region Dibuja la pantalla negra
	draw_set_alpha(global.alfaFondo)
	draw_rectangle_color(cam_x,cam_y,cam_x+cam_ancho,cam_y+cam_alto,c_black, c_black, c_black, c_black, false)
	draw_set_alpha(1)
#endregion


#region Dibuja el panel
	draw_sprite(spr_panel1_tareas,0,cam_x+640,cam_y+360)
#endregion


#region DIbuja el titulo
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	var posX =cam_x+640
	var posY = cam_y+46
		
	if !(global.tarea_completada)
	{
		draw_set_font(fnt_grande)
		switch(os_get_language()) {
			case "es": draw_text_outline("DEJAR TODAS LAS BARRAS EN COLOR VERDE",posX,posY,borde,1,1,color) break;
			case "pt": draw_text_outline("DEIXE TODAS AS BARRAS NA COR VERDE",posX,posY,borde,1,1,color) break;
			case "it": draw_text_outline("TUTTE LE BARRE IN COLORE VERDE",posX,posY,borde,1,1,color) break;
			case "ru": draw_set_font(fnt_normal_ru) draw_text_outline("ВСЕ ПАНЕЛИ ЗЕЛЕНОГО ЦВЕТА",posX,posY,borde,1,1,color) break;
			default: draw_text_outline("LEAVE ALL BARS IN GREEN COLOR",posX,posY,borde,1,1,color) break;
		}
	}	
	else 
	{
		draw_set_font(fnt_grande)
		switch(os_get_language()) {
			case "es": draw_text_outline("¡TAREA TERMINADA!",posX,posY,borde,1,1,color) break;
			case "pt": draw_text_outline("TAREFA COMPLETA!",posX,posY,borde,1,1,color) break;
			case "it": draw_text_outline("COMPITO COMPLETATO!",posX,posY,borde,1,1,color) break;
			case "ru": draw_set_font(fnt_grande_ru) draw_text_outline("ЗАДАЧА ВЫПОЛНЕНА!",posX,posY,borde,1,1,color) break;
			default: draw_text_outline("TASK COMPLETED!",posX,posY,borde,1,1,color) break;
		}
	}
#endregion


#region Dibuja las barras
	var barra_ancho = 360
	var barra_alto = 100
	var color_fondo = make_color_rgb(91,91,91)
	var color_incompleto = make_color_rgb(255,102,102)
	var color_completo = make_color_rgb(125,255,102)
	var posX = cam_x+450
	var posY = cam_y+306
	
	for(i=0 ; i<cant_barras ; i++){
		if (valor_barra[i]<valor_asignado[i]-dif or valor_barra[i]>valor_asignado[i]+dif) draw_healthbar(posX, posY,posX+barra_ancho, posY-barra_alto, valor_barra[i], color_fondo, color_incompleto, color_incompleto, 0, true, true)
		else draw_healthbar(posX, posY,posX+barra_ancho, posY-barra_alto, valor_barra[i], color_fondo, color_completo, color_completo, 0, true, true)
		
		posY+=160
	}
#endregion