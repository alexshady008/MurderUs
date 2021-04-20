/// @description  lo dibuja
draw_sprite_ext(sprite_index,0,x,y,escala,escala,0,c_white,1)


//Titulo
draw_set_font(fnt_normal)
draw_set_halign(fa_left)
draw_set_valign(fa_middle)

var posX = x-264
switch(os_get_language()) {
	case "es": draw_text_colour(posX,y,"Código:",color,color,color,color,1)   break;
	case "pt": draw_text_colour(posX,y,"Código:",color,color,color,color,1)   break;
	case "it": draw_text_colour(posX,y,"Codice:",color,color,color,color,1)   break;
	case "ru": draw_set_font(fnt_normal_ru) draw_text_colour(posX,y,"Код:",color,color,color,color,1)   break;
	default: draw_text_colour(posX,y,"Code:",color,color,color,color,1)    break;
}


//Nombre
draw_set_halign(fa_center)
if (os_get_language()!="ru") draw_set_font(fnt_normal)
else draw_set_font(fnt_normal_ru)
draw_text_colour(x+50,y,""+string(global.sala_codigo),color2,color2,color2,color2,1)