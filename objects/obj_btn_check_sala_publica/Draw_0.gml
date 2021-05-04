/// @description  lo dibuja
if (global.tipo_sala == "publica") {
	draw_sprite_ext(sprite_index,1,x,y,escala,escala,0,c_white,1)
	var alfa = 1
}
else {
	draw_sprite_ext(sprite_index,0,x,y,escala,escala,0,c_white,1)
	var alfa = 0.5
}	


draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_set_font(fnt_normal)
var posY = y-60
switch(os_get_language()) {
	case "es": draw_text_color(x,posY,"PUBLICA",color,color,color,color,alfa) break;
	case "pt": draw_text_color(x,posY,"PUBLICA",color,color,color,color,alfa) break;
	case "it": draw_text_color(x,posY,"PUBLICA",color,color,color,color,alfa) break;
	case "ru": draw_text_color(x,posY,"PUBLICA",color,color,color,color,alfa) break;
	default: draw_text_color(x,posY,"PUBLICA",color,color,color,color,alfa) break;
}
