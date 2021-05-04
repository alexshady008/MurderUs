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
	//draw_rectangle_color(0,0,room_width,room_height,c_black, c_black, c_black, c_black, false)
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
	//var color = c_white
		
	if !(global.tarea_completada)
	{
		draw_set_font(fnt_grande)
		switch(os_get_language()) {
			case "es": draw_text_outline("ELIGE LOS MISMOS VALORES",posX,posY,borde,1,1,color) break;
			case "pt": draw_text_outline("ESCOLHA OS MESMOS VALORES",posX,posY,borde,1,1,color) break;
			case "it": draw_text_outline("SCEGLI GLI STESSI VALORI",posX,posY,borde,1,1,color) break;
			case "ru": draw_set_font(fnt_normal_ru) draw_text_outline("ВЫБЕРИТЕ ОДИНАКОВЫЕ ЦЕННОСТИ",posX,posY,borde,1,1,color) break;
			default: draw_text_outline("CHOOSE THE SAME VALUES",posX,posY,borde,1,1,color) break;
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



#region Dibuja el campo y todos los valores
	var posX = cam_x+640
	var posY = cam_y+240
	draw_set_font(fnt_grande)
	draw_sprite_ext(spr_campo_mostrar_valor,0,posX,posY,1.3,1.3,0,c_white,1)
	
	var posX2 = posX-110
	for (i=0 ; i<max_valores ; i++)  {
		draw_text_outline(""+string(valor_elegido[i]),posX2,posY,borde,1,1,color)
		posX2+=110
	}	
	
#endregion


#region Dibuja el campo del medio y el valor actual
	var posY = cam_y+448
	var escala = 1
	
	var posX = cam_x+448
	draw_sprite_ext(spr_btn_ingresar_numero,0,posX,posY,escala,escala,0,c_white,1)
	draw_text_outline(""+string(valor[0]),posX,posY,borde,1,1,color)
	
	var posX = cam_x+640
	draw_sprite_ext(spr_btn_ingresar_numero,0,posX,posY,escala,escala,0,c_white,1)
	draw_text_outline(""+string(valor[1]),posX,posY,borde,1,1,color)
	
	var posX = cam_x+832
	draw_sprite_ext(spr_btn_ingresar_numero,0,posX,posY,escala,escala,0,c_white,1)
	draw_text_outline(""+string(valor[2]),posX,posY,borde,1,1,color)
#endregion