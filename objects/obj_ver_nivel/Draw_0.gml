/// @description Se dibuja
// Puede escribir su código en este editor

//draw_sprite_ext(sprite_index,0, x,y, escala, escala, 0, c_white, 1)

if (nivel != noone){
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	draw_set_font(fnt_normal)

	if (file_exists(working_directory + global.nivel_editor[nivel])){
		draw_sprite_ext(sprite_index,1, x,y, escala, escala, 0, c_white, 1)
		if (nivel_nombre!=false) {
			switch(os_get_language()) {
				case "es": draw_text_outline3("Mapa "+string(nivel+1)+" Creado",x,y,c_black,1,1,c_letra)  break;
				case "pt": draw_text_outline3("Mapa "+string(nivel+1)+" criado",x,y,c_black,1,1,c_letra)  break;
				case "it": draw_text_outline3("Mappa "+string(nivel+1)+" creata",x,y,c_black,1,1,c_letra)  break;
				case "ru": draw_text_outline3("Карта "+string(nivel+1)+" создана",x,y,c_black,1,1,c_letra)  break;
				default: draw_text_outline3("Map "+string(nivel+1)+" Created",x,y,c_black,1,1,c_letra)  break;
			}
		}
	}
	else if !(file_exists(working_directory + global.nivel_editor[nivel])){
		draw_sprite_ext(sprite_index,0, x,y, escala, escala, 0, c_white, 1)
		switch(os_get_language()) {
			case "es": draw_text_outline3("Crear Mapa",x,y,c_black,1,1,c_letra)  break;
			case "pt": draw_text_outline3("Criar mapa",x,y,c_black,1,1,c_letra)  break;
			case "it": draw_text_outline3("Crea mappa",x,y,c_black,1,1,c_letra)  break;
			case "ru": draw_text_outline3("Создать карту",x,y,c_black,1,1,c_letra)  break;
			default: draw_text_outline3("Create Map",x,y,c_black,1,1,c_letra)  break;
		}
	} 
}