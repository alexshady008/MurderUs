/// @description  lo dibuja



if (global.tipo_mapa_sala == 3 ) {
	draw_sprite_ext(sprite_index,1,x,y,escala_x,escala_y,0,c_white,1)
}	
else {
	draw_sprite_ext(sprite_index,0,x,y,escala_x,escala_y,0,c_white,1)
}	

draw_sprite_ext(spr_nombre_mapa3,0,x,y,0.85,0.85,0,c_white,1)

/*
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_set_font(fnt_normal)
switch(os_get_language()) {
	case "es": draw_text_outline2("Mapa 3",x,y,c_black,1,1,c_white) break;
	case "pt": draw_text_outline2("Mapa 3",x,y,c_black,1,1,c_white)  break;
	case "it": draw_text_outline2("Mappa 3",x,y,c_black,1,1,c_white)  break;
	case "ru": draw_set_font(fnt_normal_ru) draw_text_outline2("Карта 3",x,y,c_black,1,1,c_white)  break;
	default: draw_text_outline2("Map 3",x,y,c_black,1,1,c_white)  break;
}




