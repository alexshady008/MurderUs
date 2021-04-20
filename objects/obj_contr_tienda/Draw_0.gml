/// @description Dibuja las palabras de la interfaz
// Puede escribir su código en este editor


// Dibuja la pantalla negra
draw_set_color(c_black)
draw_set_alpha(0.65)
draw_rectangle(0,0,room_width,room_height,0)
draw_set_alpha(1)


#region Dibuja el titulo del pop up
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	draw_set_font(fnt_grande)
	var posY = 50
	

	switch(os_get_language()) {
		case "es": draw_text_outline("TIENDA",room_width/2,posY,c_black,1,1,c_white) break;
		case "pt": draw_text_outline("LOJA",room_width/2,posY,c_black,1,1,c_white) break;
		case "it": draw_text_outline("NEGOZIO",room_width/2,posY,c_black,1,1,c_white) break;
		case "ru": draw_set_font(fnt_grande_ru) draw_text_outline("МАГАЗИН",room_width/2,posY,c_black,1,1,c_white) break;
		default: draw_text_outline("STORE",room_width/2,posY,c_black,1,1,c_white) break;
	}
#endregion	


#region Dibuja la cantidad de monedas
	draw_set_halign(fa_left)
	var posY = 50
	draw_sprite_ext(spr_moneda_icono,0,50,posY,1,1,0,c_white,1)
	draw_text_outline(""+string(global.monedas),100,posY,c_black,1,1,c_white)
#endregion