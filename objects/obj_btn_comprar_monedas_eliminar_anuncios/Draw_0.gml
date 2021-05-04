/// @description Lo dibuja
// Puede escribir su código en este editor

draw_sprite_ext(sprite_index, 0,x,y, escala, escala, 0, c_white, 1)

draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_set_font(fnt_muy_chica)
var posY = y+100
switch(os_get_language()) {
	case "es": draw_text_outline2(""+string(global.cant_monedas[4])+" MONEDAS",x,posY-10,c_black,1,1,c_white) 
		draw_text_outline2("ELIMINAR ANUNCIOS",x,posY+10,c_black,1,1,c_white)  break;
	case "pt": draw_text_outline2(""+string(global.cant_monedas[4])+" MOEDAS",x,posY-10,c_black,1,1,c_white) 
		draw_text_outline2("DELETE ADS",x,posY+10,c_black,1,1,c_white) break;
	case "it": draw_text_outline2(""+string(global.cant_monedas[4])+" MONETE",x,posY-10,c_black,1,1,c_white) 
		draw_text_outline2("ELIMINA ANNUNCI",x,posY+10,c_black,1,1,c_white)  break;
	case "ru": /*draw_set_font(fnt_chica_ru)*/ draw_text_outline2(""+string(global.cant_monedas[4])+" МОНЕТЫ",x,posY-10,c_black,1,1,c_white) 
												draw_text_outline2("УДАЛИТЬ ОБЪЯВЛЕНИЕ",x,posY+10,c_black,1,1,c_white)  break;
	default: draw_text_outline2(""+string(global.cant_monedas[4])+" COINS",x,posY-10,c_black,1,1,c_white) 
		draw_text_outline2("REMOVE ADS",x,posY+10,c_black,1,1,c_white)  break;
}