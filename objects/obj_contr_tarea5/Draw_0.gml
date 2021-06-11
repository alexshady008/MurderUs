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
	draw_sprite(spr_panel2_tareas,0,cam_x+640,cam_y+360)
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
			case "es": draw_text_outline("PULSA EL BOTON LAS VECES INDICADAS"+string(cant_veces_a_apretar)+" VECES",posX,posY,borde,1,1,color) break;
			case "pt": draw_text_outline("APERTE O BOTÃO",posX,posY,borde,1,1,color) break;
			case "it": draw_text_outline("PREMI IL BOTTONE",posX,posY,borde,1,1,color) break;
			case "ru": draw_set_font(fnt_normal_ru) draw_text_outline("НАЖМИ НА КНОПКУ",posX,posY,borde,1,1,color) break;
			default: draw_text_outline("PRESS THE BUTTON THE TIMES INDICATED",posX,posY,borde,1,1,color) break;
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


#region Dibuja las veces apretado
	var posX = cam_x+640
	var posY = cam_y+256
	draw_sprite(spr_campo_mostrar_valor,0,posX,posY)
	draw_set_font(fnt_grande)
	draw_text_outline2(""+string(veces_apretado)+" / "+string(cant_veces_a_apretar),posX,posY+5,borde,1,1,color)
#endregion