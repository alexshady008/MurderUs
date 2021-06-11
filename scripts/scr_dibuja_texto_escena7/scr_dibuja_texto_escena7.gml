// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_dibuja_texto_escena7(c_letra, c_borde, posX_titulo, posY_titulo){

	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	draw_set_font(fnt_grande)
	var sep = 60
	var width = 640
	var escala = 0.75
	var posX1 = (room_width/2)-320
	var posX2 = (room_width/2)+320
	var posY_letras = room_height-75
	switch(os_get_language()) {
		case "es": 
			draw_text_outline4("ELIMINA A LA TRIPULACIÓN Y NO DEJES QUE TE ATRAPEN.",posX1,posY_letras,c_borde,1,1,c_letra,sep,width,escala,0) 
			draw_text_outline4("USA INTELIGENTEMENTE EL SABOTAJE, VÍAS ALTERNAS Y EL ENGAÑO PARA CREAR CAOS.",posX2,posY_letras,c_borde,1,1,c_letra,sep,width,escala,0) 
			draw_text_outline4("ASESINOS",posX_titulo+3,posY_titulo+3,c_black,0.75,0.75,c_black,sep,1000,1.15,0) 
			draw_text_outline4("ASESINOS",posX_titulo,posY_titulo,c_borde,1,1,c_letra,sep,1000,1.15,0) 
		break;
		case "pt": 
			draw_text_outline4("ELIMINE A TRIPULAÇÃO E NÃO DEIXE QUE ELES TE PEGUEM.",posX1,posY_letras,c_borde,1,1,c_letra,sep,width,escala,0) 
			draw_text_outline4("USE SABOTAGEM, CAMINHOS ALTERNATIVOS E ENGANO DE FORMA INTELIGENTE PARA CRIAR O CAOS.",posX2,posY_letras,c_borde,1,1,c_letra,sep,width,escala,0) 
			draw_text_outline4("ASSASSINO",posX_titulo+3,posY_titulo+3,c_black,0.75,0.75,c_black,sep,1000,1.15,0) 
			draw_text_outline4("ASSASSINO",posX_titulo,posY_titulo,c_borde,1,1,c_letra,sep,1000,1.15,0) 
		break;
		default: 
			draw_text_outline4("ELIMINATE THE CREW AND DON’T LET THEM CATCH YOU.",posX1,posY_letras,c_borde,1,1,c_letra,sep,width,escala,0) 
			draw_text_outline4("INTELLIGENTLY USE SABOTAGE, ALTERNATE ROUTES, AND DECEPTION TO CREATE CHAOS.",posX2,posY_letras,c_borde,1,1,c_letra,sep,width,escala,0) 
			draw_text_outline4("KILLER",posX_titulo+3,posY_titulo+3,c_black,0.75,0.75,c_black,sep,1000,1.15,0) 
			draw_text_outline4("KILLER",posX_titulo,posY_titulo,c_borde,1,1,c_letra,sep,1000,1.15,0) 
		break;
	}
}
