/// @description  lo dibuja
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_set_font(fnt_normal)


if (global.tipo_mapa_sala == "personalizado" ) {
	draw_sprite_ext(sprite_index,1,x,y,escala_x,escala_y,0,c_white,1)
	//var alfa = 1
}	
else {
	draw_sprite_ext(sprite_index,0,x,y,escala_x,escala_y,0,c_white,1)
	//var alfa = 0.5
}	



if (global.datos_nivel_pers == noone) {
	switch(os_get_language()) {
		case "es": draw_text_outline2("Crear Mapa",x,y,c_black,1,1,c_white) break;
		case "pt": draw_text_outline2("Criar mapa",x,y,c_black,1,1,c_white)  break;
		case "it": draw_text_outline2("Crea mappa",x,y,c_black,1,1,c_white)  break;
		case "ru": draw_set_font(fnt_normal_ru) draw_text_outline2("Создать карту",x,y,c_black,1,1,c_white)  break;
		default: draw_text_outline2("Create map",x,y,c_black,1,1,c_white)  break;
	}
}
else {
	switch(os_get_language()) {
		case "es": draw_text_outline2("Mapa Creado",x,y,c_black,1,1,c_white) break;
		case "pt": draw_text_outline2("Mapa Criado",x,y,c_black,1,1,c_white)  break;
		case "it": draw_text_outline2("Mappa creata",x,y,c_black,1,1,c_white)  break;
		case "ru": draw_set_font(fnt_normal_ru) draw_text_outline2("Карта создана",x,y,c_black,1,1,c_white)  break;
		default: draw_text_outline2("Map Created",x,y,c_black,1,1,c_white)  break;
	}
}



if (global.ipServidor == global.servidorBrasil)  draw_sprite_ext(sprite_index,0,x,y,escala_x,escala_y,0,c_black,0.5)



