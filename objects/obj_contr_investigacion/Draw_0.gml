/// @description Dibuja la interfaz de los sabotajes
// Puede escribir su código en este editor

#region Propiedades de la camara
	cam_x = camera_get_view_x(view_camera[0]) 
	cam_y = camera_get_view_y(view_camera[0]) 
	cam_ancho = camera_get_view_width(view_camera[0])
	cam_alto = camera_get_view_height(view_camera[0])
#endregion


draw_set_alpha(global.alfaFondo)
draw_rectangle_color(cam_x,cam_y,cam_x+cam_ancho,cam_y+cam_alto,c_black,c_black,c_black,c_black,false)
draw_set_alpha(1)


draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_set_font(fnt_grande)
var posX = cam_x+640
var posY = cam_y+50
		
//Si no hay ningua pista
if (color_pista==noone and letra_pista==noone and skin_pista==noone){
	switch(os_get_language()) {
		case "es": draw_text_outline("NO HAY NINGUNA PISTA EN ESTE CUERPO",posX,posY,c_black,1,1,c_white) break;
		case "pt": draw_text_outline("NÃO HÁ PISTAS NESTE CORPO",posX,posY,c_black,1,1,c_white) break;
		case "it": draw_text_outline("NESSUN PISTA SU QUESTO CORPO",posX,posY,c_black,1,1,c_white) break;
		default: draw_text_outline("THERE IS NO CLUES ON THIS BODY",posX,posY,c_black,1,1,c_white) break;
	}
}
// Si hay una pista: huella dactilar
else if (color_pista!=noone and skin_pista!=noone and letra_pista==noone){
	switch(os_get_language()) {
		case "es": draw_text_outline("HAY UNA PISTA EN ESTE CUERPO",posX,posY,c_black,1,1,c_white) break;
		case "pt": draw_text_outline("HÁ UMA PISTA SOBRE ESTE CORPO",posX,posY,c_black,1,1,c_white) break;
		case "it": draw_text_outline("C'È UN INDIZIO SU QUESTO CORPO",posX,posY,c_black,1,1,c_white) break;
		default: draw_text_outline("THERE IS A CLUE ON THIS BODY",posX,posY,c_black,1,1,c_white) break;
	}
	var color = scr_color_pista(skin_pista, color_pista)
	draw_sprite_ext(spr_huella_dactilar,0,posX,posY+250,1,1,0,color,1)
	var posY2 = posY+500
	draw_set_font(fnt_normal)
	switch(os_get_language()) {
		case "es": draw_text_outline("HUELLA DACTILAR DEL ASESINO",posX,posY2,c_black,1,1,c_white) break;
		case "pt": draw_text_outline("IMPRESSÃO DIGITAL DO ASSASSINO",posX,posY2,c_black,1,1,c_white) break;
		case "it": draw_text_outline("IMPRONTE DIGITALI DEL KILLER",posX,posY2,c_black,1,1,c_white) break;
		default: draw_text_outline("KILLER'S FINGERPRINT",posX,posY2,c_black,1,1,c_white) break;
	}
}
// Si hay una pista: letra del asesino
else if (color_pista==noone and skin_pista==noone and letra_pista!=noone){
	switch(os_get_language()) {
		case "es": draw_text_outline("HAY UNA PISTA EN ESTE CUERPO",posX,posY,c_black,1,1,c_white) break;
		case "pt": draw_text_outline("HÁ UMA PISTA SOBRE ESTE CORPO",posX,posY,c_black,1,1,c_white) break;
		case "it": draw_text_outline("C'È UN INDIZIO SU QUESTO CORPO",posX,posY,c_black,1,1,c_white) break;
		default: draw_text_outline("THERE IS A CLUE ON THIS BODY",posX,posY,c_black,1,1,c_white) break;
	}
	draw_set_font(fnt_grande)
	draw_text_outline4(""+string(letra_pista),posX,posY+250,c_black,1,1,c_white,50,500,3,0) 
	var posY2 = posY+500
	draw_set_font(fnt_normal)
	switch(os_get_language()) {
		case "es": draw_text_outline("PRIMERA LETRA DEL ASESINO",posX,posY2,c_black,1,1,c_white) break;
		case "pt": draw_text_outline("PRIMEIRA CARTA DO ASSASSINO",posX,posY2,c_black,1,1,c_white) break;
		case "it": draw_text_outline("LA PRIMA LETTERA DELL'ASSASSINO",posX,posY2,c_black,1,1,c_white) break;
		default: draw_text_outline("ASSASSIN'S FIRST LETTER",posX,posY2,c_black,1,1,c_white) break;
	}
}
// Si hay dos pistas: huella dactilar y letra del asesino
else if (color_pista!=noone and skin_pista!=noone and letra_pista!=noone){
	switch(os_get_language()) {
		case "es": draw_text_outline("HAY DOS PISTAS EN ESTE CUERPO",posX,posY,c_black,1,1,c_white) break;
		case "pt": draw_text_outline("HÁ DUAS PISTAS NESTE CORPO",posX,posY,c_black,1,1,c_white) break;
		case "it": draw_text_outline("CI SONO DUE INDIZI SU QUESTO CORPO",posX,posY,c_black,1,1,c_white) break;
		default: draw_text_outline("THERE ARE TWO CLUES ON THIS BODY",posX,posY,c_black,1,1,c_white) break;
	}
	
	// Letra del asesino
	var posX_pista1 = posX-300
	draw_set_font(fnt_grande)
	draw_text_outline4(""+string(letra_pista),posX_pista1,posY+250,c_black,1,1,c_white,50,500,3,0) 
	var posY2 = posY+500
	draw_set_font(fnt_normal)
	switch(os_get_language()) {
		case "es": draw_text_outline("PRIMERA LETRA DEL ASESINO",posX_pista1,posY2,c_black,1,1,c_white) break;
		case "pt": draw_text_outline("PRIMEIRA CARTA DO ASSASSINO",posX_pista1,posY2,c_black,1,1,c_white) break;
		case "it": draw_text_outline("LA PRIMA LETTERA DELL'ASSASSINO",posX_pista1,posY2,c_black,1,1,c_white) break;
		default: draw_text_outline("ASSASSIN'S FIRST LETTER",posX_pista1,posY2,c_black,1,1,c_white) break;
	}
	
	// Huella dactilar
	var posX_pista2 = posX+300
	var color = scr_color_pista(skin_pista, color_pista)
	draw_sprite_ext(spr_huella_dactilar,0,posX_pista2,posY+250,1,1,0,color,1)
	var posY2 = posY+500
	draw_set_font(fnt_normal)
	switch(os_get_language()) {
		case "es": draw_text_outline("HUELLA DACTILAR DEL ASESINO",posX_pista2,posY2,c_black,1,1,c_white) break;
		case "pt": draw_text_outline("IMPRESSÃO DIGITAL DO ASSASSINO",posX_pista2,posY2,c_black,1,1,c_white) break;
		case "it": draw_text_outline("IMPRONTE DIGITALI DEL KILLER",posX_pista2,posY2,c_black,1,1,c_white) break;
		default: draw_text_outline("KILLER'S FINGERPRINT",posX_pista2,posY2,c_black,1,1,c_white) break;
	}
}