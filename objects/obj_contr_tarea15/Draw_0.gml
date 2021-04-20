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
			case "es": draw_text_outline("MUEVE LAS LINEAS HACIA EL INDICADOR",posX,posY,borde,1,1,color) break;
			case "pt": draw_text_outline("MOVER AS LINHAS PARA O INDICADOR",posX,posY,borde,1,1,color) break;
			case "it": draw_text_outline("SPOSTA LE LINEE VERSO L'INDICATORE",posX,posY,borde,1,1,color) break;
			case "ru": draw_set_font(fnt_normal_ru) draw_text_outline("ПЕРЕМЕСТИТЕ ЛИНИИ К ИНДИКАТОРУ",posX,posY,borde,1,1,color) break;
			default: draw_text_outline("MOVE THE LINES TO THE INDICATOR",posX,posY,borde,1,1,color) break;
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
	var barra_ancho = 350
	var barra_alto = 35
	var linea_alto = 20
	//var color_linea = make_color_rgb(80,188,255)
	//var color_completo = make_color_rgb(125,255,102)
	
	for(i=0 ; i<cant_barras ; i++){
		if (i==0) { 
			if (point_distance(posX_barra, posY_barra[i], posX_barra, posY_linea[i])>3) var color_barra = make_color_rgb(178,0,0)
			else var color_barra = make_color_rgb(255,77,77)
			var color_linea = make_color_rgb(255,120,120)
		}
		else { 
			if (point_distance(posX_barra, posY_barra[i], posX_barra, posY_linea[i])>3) var color_barra = make_color_rgb(0,155,36)
			else var color_barra = make_color_rgb(46,255,105)
			var color_linea = make_color_rgb(153,255,177)
		}
		
		// Dibuja la barra
		draw_healthbar(posX_barra-(barra_ancho/2), posY_barra[i]-(barra_alto/2),posX_barra+(barra_ancho/2), posY_barra[i]+(barra_alto/2), 100, c_black, color_barra, color_barra, 0, true, true)
		// Dibuja la linea
		draw_healthbar(posX_linea-(barra_ancho/2), posY_linea[i]-(linea_alto/2),posX_linea+(barra_ancho/2), posY_linea[i]+(linea_alto/2), 100, c_black, color_linea, color_linea, 0, true, true)
	}
#endregion