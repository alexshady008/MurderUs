/// @description  lo dibuja

draw_sprite_ext(sprite_index,0,x,y,escala,escala,0,c_white,1)

 // Letras
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_set_font(fnt_normal)

if !(global.regaloSkins){
	switch(os_get_language()) {
		case "es": draw_text_outline("CALIFICAR",x,y,c_borde,1,1,c_letra) break;
		case "pt": draw_text_outline("QUALIFIQUE",x,y,c_borde,1,1,c_letra) break;
		case "it": draw_text_outline("QUALIFICA",x,y,c_borde,1,1,c_letra) break;
		case "ru": draw_set_font(fnt_normal_ru) draw_text_outline("Оцените",x,y,c_borde,1,1,c_letra) break;
		default: draw_text_outline("RATE",x,y,c_borde,1,1,c_letra) break;
	}
}
else {
	switch(os_get_language()) {
		case "es": draw_text_outline("OBTENER",x,y,c_borde,1,1,c_letra) break;
		case "pt": draw_text_outline("DESBLOQUEAR",x,y,c_borde,1,1,c_letra) break;
		case "it": draw_text_outline("SBLOCCARE",x,y,c_borde,1,1,c_letra) break;
		case "ru": draw_set_font(fnt_normal_ru) draw_text_outline("ОТПЕРЕТЬ",x,y,c_borde,1,1,c_letra) break;
		default: draw_text_outline("UNLOCK",x,y,c_borde,1,1,c_letra) break;
	}
	
	if (global.ruleta_usada) draw_sprite_ext(sprite_index,0,x,y,escala,escala,0,c_black,0.5)
}


