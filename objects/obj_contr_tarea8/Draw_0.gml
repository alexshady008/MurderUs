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
	var color = c_white
		
	if !(global.tarea_completada)
	{
		draw_set_font(fnt_grande)
		switch(os_get_language()) {
			case "es": draw_text_outline("SELECCIONA LOS ICONOS CORRECTOS",posX,posY,borde,1,1,color) break;
			case "pt": draw_text_outline("ESCOLHA OS ÍCONES CERTOS",posX,posY,borde,1,1,color) break;
			case "it": draw_text_outline("SCEGLI LE ICONE GIUSTE",posX,posY,borde,1,1,color) break;
			case "ru": draw_set_font(fnt_normal_ru) draw_text_outline("ВЫБЕРИТЕ ПРАВИЛЬНЫЕ ИКОНЫ",posX,posY,borde,1,1,color) break;
			default: draw_text_outline("SELECT THE CORRECT ICONS",posX,posY,borde,1,1,color) break;
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
	draw_sprite_ext(spr_campo_mostrar_valor,0,posX,posY,1.3,1.3,0,c_white,1)
	
	var posX2 = posX-110
	for (i=0 ; i<max_iconos_valores ; i++)  {
		if (iconos_aceptados[i]==true) var color=c_white
		else var color=c_dkgray
		draw_sprite_ext(spr_btn_iconos,iconos_valores[i],posX2,posY,0.5,0.5,0,color,1)
		posX2+=80
	}	
	
#endregion


#region Dibuja el campo del medio y el valor actual
	var posX = cam_x+640
	var posY = cam_y+432
	draw_sprite(spr_campo_valor,0,posX,posY)
	draw_sprite_ext(spr_btn_iconos,icono_actual,posX,posY,1,1,0,c_white,1)	
#endregion