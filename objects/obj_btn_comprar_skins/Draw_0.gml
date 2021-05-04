/// @description Lo dibuja
// Puede escribir su código en este editor

draw_sprite_ext(sprite_index, 0,x,y, escala, escala, 0, c_white, 1)

if (room==rm_tienda){
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	draw_set_font(fnt_muy_chica)
	var posY = y+100
	switch(os_get_language()) {
		case "es": draw_text_outline2("DESBLOQUEAR TODOS",x,posY-10,c_black,1,1,c_white) 
			draw_text_outline2("LOS SKINS",x,posY+10,c_black,1,1,c_white)  break;
		case "pt": draw_text_outline2("DESBLOQUEAR",x,posY-10,c_black,1,1,c_white) 
			draw_text_outline2("TODAS AS PELES",x,posY+10,c_black,1,1,c_white) break;
		case "it": draw_text_outline2("SBLOCCA TUTTE",x,posY-10,c_black,1,1,c_white) 
			draw_text_outline2("LE PELLI",x,posY+10,c_black,1,1,c_white)  break;
		case "ru": /*draw_set_font(fnt_muy_chica)*/ draw_text_outline2("РАЗБЛОКИРОВАТЬ",x,posY-10,c_black,1,1,c_white) 
													draw_text_outline2("ВСЕ СКИНЫ",x,posY+10,c_black,1,1,c_white)  break;
		default: draw_text_outline2("UNLOCK",x,posY-10,c_black,1,1,c_white) 
			draw_text_outline2("ALL SKINS",x,posY+10,c_black,1,1,c_white)  break;
	}
}


if (global.skins_comprados) draw_sprite_ext(sprite_index, 0,x,y, escala, escala, 0, c_black, 0.5)