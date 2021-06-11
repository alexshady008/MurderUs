/// @description Lo dibuja
// Puede escribir su código en este editor

draw_sprite_ext(sprite_index, 0,x,y, escala, escala, 0, c_white, 1)

if (room==rm_tienda){
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	draw_set_font(fnt_chica)
	var posY = y+100
	switch(os_get_language()) {
		case "es": draw_text_outline2("MEGA OFERTA",x,posY,c_black,1,1,c_white) break;
		case "pt": draw_text_outline2("MEGA OFERTA",x,posY,c_black,1,1,c_white) break;
		case "it": draw_text_outline2("MEGA OFFERTA",x,posY,c_black,1,1,c_white) break;
		case "ru": draw_set_font(fnt_chica_ru) draw_text_outline2("ПРЕДЛАГАЕТ",x,posY,c_black,1,1,c_white) break;
		default: draw_text_outline2("MEGA OFFER",x,posY,c_black,1,1,c_white) break;
	}
}


if (global.super_oferta_comprada) draw_sprite_ext(sprite_index, 0,x,y, escala, escala, 0, c_black, 0.5)