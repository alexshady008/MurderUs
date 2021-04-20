/// @description  lo dibuja

draw_sprite_ext(sprite_index,0,x,y,escala,escala,0,c_white,1)

 // Letras
draw_set_halign(fa_left)
draw_set_valign(fa_middle)
draw_set_font(fnt_normal)
var posX = x-35

switch(os_get_language()) {
	case "es": draw_text_outline("UNIRSE",posX,y,c_borde,1,1,c_letra) break;
	case "pt": draw_text_outline("JUNTE-SE",posX,y,c_borde,1,1,c_letra) break;
	case "it": draw_text_outline("ADERIRE",posX,y,c_borde,1,1,c_letra) break;
	//case "ru": draw_set_font(fnt_normal_ru) draw_text_outline("Оцените",x,y,c_borde,1,1,c_letra) break;
	default: draw_text_outline("JOIN",posX,y,c_borde,1,1,c_letra) break;
}


