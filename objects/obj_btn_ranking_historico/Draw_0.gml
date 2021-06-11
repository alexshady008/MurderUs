/// @description  lo dibuja
if (global.tipo_ranking=="historico") draw_sprite_ext(sprite_index,1,x,y,escala,escala,0,c_white,1)
else draw_sprite_ext(sprite_index,0,x,y,escala,escala,0,c_white,1)



 // Letras
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_set_font(fnt_normal)

switch(os_get_language()) {
	case "es": draw_text_outline("HISTÓRICO",x,y,borde,1,1,color) break;
	case "pt": draw_text_outline("HISTORICAL",x,y,borde,1,1,color) break;
	case "it": draw_text_outline("STORICO",x,y,borde,1,1,color) break;
	case "ru": draw_set_font(fnt_normal_ru) draw_text_outline("ИСТОРИЧЕСКИЙ",x,y,borde,1,1,color) break;
	default: draw_text_outline("HISTORICAL",x,y,borde,1,1,color) break;
}
