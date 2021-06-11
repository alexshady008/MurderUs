/// @description  lo dibuja
draw_sprite_ext(sprite_index,0,x,y,escala,escala,0,c_white,1)


//Titulo
draw_set_font(fnt_normal)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
var posX = x
var codigo = obj_contr_tienda.codigo

if (codigo==noone){
	switch(os_get_language()) {
		case "es": draw_text_outline("INGRESE CÓDIGO DE OFERTA",posX,y,c_black,1,1,c_white)  break;
		case "pt": draw_text_outline("DIGITE O CÓDIGO DA OFERTA",posX,y,c_black,1,1,c_white)   break;
		case "it": draw_text_outline("INSERISCI IL CODICE DELL'OFFERTA",posX,y,c_black,1,1,c_white)   break;
		case "ru": draw_set_font(fnt_normal_ru) draw_text_outline("ВВЕДИТЕ КОД ПРЕДЛОЖЕНИЯ",posX,y,c_black,1,1,c_white)   break;
		default: draw_text_outline("ENTER OFFER CODE",posX,y,c_black,1,1,c_white) break;
	}
}
else {
	draw_text_outline(""+string(codigo),posX,y,c_black,1,1,c_white)
}


/*
//Nombre
draw_set_halign(fa_center)
if (os_get_language()!="ru") draw_set_font(fnt_normal)
else draw_set_font(fnt_normal_ru)
draw_text_colour(x+50,y,""+string(global.nombre),color2,color2,color2,color2,1)


//Titulo
draw_set_halign(fa_center)
var posX = 640
var posY = y-60
if (os_get_language()!="ru") draw_set_font(fnt_grande)
else draw_set_font(fnt_grande_ru)
switch(os_get_language()) {
	case "es": draw_text_outline("CAMBIAR TU NOMBRE",posX,posY,c_black,1,1,c_white) break;
	case "pt": draw_text_outline("ALTERA O TEU NOME",posX,posY,c_black,1,1,c_white) break;
	case "it": draw_text_outline("CAMBIA IL TUO NOME",posX,posY,c_black,1,1,c_white) break;
	case "ru": draw_text_outline("ИЗМЕНИТЕ ВАШЕ ИМЯ",posX,posY,c_black,1,1,c_white) break;
	default: draw_text_outline("CHANGE YOUR NAME",posX,posY,c_black,1,1,c_white) break;
}