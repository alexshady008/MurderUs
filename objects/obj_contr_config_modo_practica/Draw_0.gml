/// @description Dibuja las palabras de la interfaz
// Puede escribir su código en este editor


// Dibuja la pantalla negra
draw_set_color(c_black)
draw_set_alpha(0.65)
draw_rectangle(0,0,room_width,room_height,0)
draw_set_alpha(1)

// DIbuja el campo
//draw_sprite_ext(spr_popup_grande,0,x,y,1,1,0,c_white,1)


#region Dibuja el titulo 
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	draw_set_font(fnt_muy_grande)
	var posX = 640
	var posY = 60
	switch(os_get_language()) {
		case "es": draw_text_outline("PRÁCTICA",posX,posY,borde,1,1,color) break;
		case "pt": draw_text_outline("PRÁTICA",posX,posY,borde,1,1,color) break;
		case "it": draw_text_outline("PRATICA",posX,posY,borde,1,1,color) break;
		case "ru": draw_set_font(fnt_grande_ru) draw_text_outline("тест",posX,posY,borde,1,1,color) break;
		default: draw_text_outline("PRACTICE",posX,posY,borde,1,1,color) break;
	}	
#endregion	

	
#region Dibuja el titulo de la cant de tareas en la sala
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	draw_set_font(fnt_grande)
	var posX = 640  //990
	var posY = 173
	switch(os_get_language()) {
		case "es": draw_text_outline("TAREAS",posX,posY,borde,1,1,color) break;
		case "pt": draw_text_outline("TAREFAS",posX,posY,borde,1,1,color) break;
		case "it": draw_text_outline("COMPITI",posX,posY,borde,1,1,color) break;
		case "ru": draw_set_font(fnt_grande_ru) draw_text_outline("ЗАДАЧА",posX,posY,borde,1,1,color) break;
		default: draw_text_outline("TASKS",posX,posY,borde,1,1,color) break;
	}	
#endregion	

