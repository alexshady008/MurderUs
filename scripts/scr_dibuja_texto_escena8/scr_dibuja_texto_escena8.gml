// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_dibuja_texto_escena8(c_letra, c_borde, posX_titulo, posY_titulo){

	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	draw_set_font(fnt_grande)
	var sep = 60
	var width = 640
	var escala = 0.75
	var posX1 = (room_width/2)-320
	var posX2 = (room_width/2)+320
	var posY_letras = room_height-75
	var c_borde_titulo = make_color_rgb(178,89,0)
	switch(os_get_language()) {
		case "es": 
			draw_text_outline4("LIMPIA LOS DESASTRES DE LOS ASESINOS PARA EVITAR QUE LOS DESCUBRAN.",posX1,posY_letras,c_borde,1,1,c_letra,sep,width,escala,0) 
			draw_text_outline4("TU VOTO ELIMINA UN VOTO DE ALGUIEN MÁS, ÚSALO EN FAVOR DE TU BANDO.",posX2,posY_letras,c_borde,1,1,c_letra,sep,width,escala,0) 
			draw_text_outline4("COMPLICES",posX_titulo+3,posY_titulo+3,c_black,0.75,0.75,c_black,sep,1000,1.15,0) 
			draw_text_outline4("COMPLICES",posX_titulo,posY_titulo,c_borde_titulo,1,1,c_letra,sep,1000,1.15,0) 
		break;
		case "pt": 
			draw_text_outline4("LIMPE A BAGUNCA QUE OS ASSASSINOS DEIXARAM PARA EVITAR SEREM DESCOBERTOS.",posX1,posY_letras,c_borde,1,1,c_letra,sep,width,escala,0) 
			draw_text_outline4("SEU VOTO REMOVE 1 VOTO DE OUTRA PESSOA, USE-O A FAVOR DO SEU LADO.",posX2,posY_letras,c_borde,1,1,c_letra,sep,width,escala,0) 
			draw_text_outline4("COMPLICES",posX_titulo+3,posY_titulo+3,c_black,0.75,0.75,c_black,sep,1000,1.15,0) 
			draw_text_outline4("COMPLICES",posX_titulo,posY_titulo,c_borde_titulo,1,1,c_letra,sep,1000,1.15,0) 
		break;
		default: 
			draw_text_outline4("CLEAN UP THE MESS THE KILLERS LEAVE BEHIND TO AVOID BEING DISCOVERED.",posX1,posY_letras,c_borde,1,1,c_letra,sep,width,escala,0) 
			draw_text_outline4("YOUR VOTE REMOVES 1 VOTE FROM SOMEONE ELSE, USE IT IN FAVOR OF YOUR SIDE.",posX2,posY_letras,c_borde,1,1,c_letra,sep,width,escala,0) 
			draw_text_outline4("ACCOMPLICE",posX_titulo+3,posY_titulo+3,c_black,0.75,0.75,c_black,sep,1000,1.15,0) 
			draw_text_outline4("ACCOMPLICE",posX_titulo,posY_titulo,c_borde_titulo,1,1,c_letra,sep,1000,1.15,0) 
		break;
	}
}
