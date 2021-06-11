/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

if (instance_exists(obj_tareas_mantenimiento) or instance_exists(obj_tareas_recoleccion))
{
#region DIbuja el titulo
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	var posX =global.cam_x+640
	var posY = global.cam_y+46
		
	if !(global.tarea_completada)
	{
		draw_set_font(fnt_grande)
		
		if (tipo==1){
			switch(os_get_language()) {
				case "es": draw_text_outline("HACER EL MANTENIMIENTO CORRECTO",posX,posY,c_black,1,1,c_white) break;
				case "pt": draw_text_outline("FAÇA A MANUTENÇÃO CORRETA",posX,posY,c_black,1,1,c_white) break;
				case "it": draw_text_outline("FARE LA GIUSTA MANUTENZIONE",posX,posY,c_black,1,1,c_white) break;
				case "ru": draw_set_font(fnt_normal_ru) draw_text_outline("ПРАВИЛЬНОЕ ОБСЛУЖИВАНИЕ",posX,posY,c_black,1,1,c_white) break;
				default: draw_text_outline("DO THE RIGHT MAINTENANCE",posX,posY,c_black,1,1,c_white) break;
			}
		}
		else if (tipo==2){
			switch(os_get_language()) {
				case "es": draw_text_outline("ENCUENTRA Y RECOGE TODOS LOS OBJETOS",posX,posY,c_black,1,1,c_white) break;
				case "pt": draw_text_outline("ENCONTRE E COLETE TODOS OS OBJETOS",posX,posY,c_black,1,1,c_white) break;
				case "it": draw_text_outline("TROVA E RACCOGLIE TUTTI GLI OGGETTI",posX,posY,c_black,1,1,c_white) break;
				case "ru": draw_set_font(fnt_normal_ru) draw_text_outline("НАЙТИ И СОБИРАЙ ВСЕ ОБЪЕКТЫ",posX,posY,c_black,1,1,c_white) break;
				default: draw_text_outline("FIND AND COLLECT ALL OBJECTS",posX,posY,c_black,1,1,c_white) break;
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

#region Dibuja el fondo
	if (dibujar_fondo) draw_sprite(spr_fondo2_mantenimiento_3, 0, global.cam_x+640,global.cam_y+660)
#endregion
}