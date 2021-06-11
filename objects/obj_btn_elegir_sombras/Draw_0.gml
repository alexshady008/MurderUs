/// @description  lo dibuja

draw_sprite_ext(sprite_index,0,x,y,escala,escala,0,c_white,1)

 // Letras
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_set_font(fnt_normal)

switch(os_get_language()) {
	case "es": draw_text_outline("SI",x,y,c_borde,1,1,c_letra) break;
	case "pt": draw_text_outline("SIM",x,y,c_borde,1,1,c_letra) break;
	case "it": draw_text_outline("SÌ",x,y,c_borde,1,1,c_letra) break;
	case "ru": draw_set_font(fnt_normal_ru) draw_text_outline("ДА",x,y,c_borde,1,1,c_letra) break;
	default: draw_text_outline("YES",x,y,c_borde,1,1,c_letra) break;
}


if (global.luz)  draw_sprite_ext(sprite_index,0,x,y,escala,escala,0,c_black,0.5)
