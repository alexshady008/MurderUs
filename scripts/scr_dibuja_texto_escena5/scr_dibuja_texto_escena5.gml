// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_dibuja_texto_escena5(c_letra, c_borde, posX_titulo, posY_titulo){
		
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	draw_set_font(fnt_grande)
	var sep = 60
	var width = 640
	var escala = 0.75
	var posX1 = (room_width/2)-320
	var posX2 = (room_width/2)+320
	var posY_letras = room_height-75
	var c_borde_titulo = make_color_rgb(0,147,45)
	switch(os_get_language()) {
		case "es": 
			draw_text_outline4("INVESTIGA LO QUE PONGA EN RIESGO A LA TRIPULACIÓN Y SU MISIÓN. PODRÁS VER COSAS QUE OTROS NO.",posX1,posY_letras,c_borde,1,1,c_letra,sep,width,escala,0) 
			draw_text_outline4("ATA LOS CABOS Y ENCUENTRA A LOS CULPABLES, TU VOTO ENCONTRA VALE X2.",posX2,posY_letras,c_borde,1,1,c_letra,sep,width,escala,0) 
			draw_text_outline4("DETECTIVES",posX_titulo+3,posY_titulo+3,c_black,0.75,0.75,c_black,sep,1000,1.15,0) 
			draw_text_outline4("DETECTIVES",posX_titulo,posY_titulo,c_borde_titulo,1,1,c_letra,sep,1000,1.15,0) 
		break;
		case "pt": 
			draw_text_outline4("INVESTIGUE O QUE COLOCA A TRIPULAÇÃO EM RISCO. VOCÊ PODERÁ VER COISAS QUE OS OUTROS NÃO VÊEM.",posX1,posY_letras,c_borde,1,1,c_letra,sep,width,escala,0) 
			draw_text_outline4("AMARRE AS PONTAS SOLTAS E ENCONTRE OS CULPADOS, O SEU VOTO CONTRA VALE X2.",posX2,posY_letras,c_borde,1,1,c_letra,sep,width,escala,0) 
			draw_text_outline4("DETETIVE",posX_titulo+3,posY_titulo+3,c_black,0.75,0.75,c_black,sep,1000,1.15,0) 
			draw_text_outline4("DETETIVE",posX_titulo,posY_titulo,c_borde_titulo,1,1,c_letra,sep,1000,1.15,0) 
		break;
		default: 
			draw_text_outline4("INVESTIGATE WHAT PUTS THE CREW AT RISK. YOU WILL BE ABLE TO SEE THINGS THAT OTHERS DO NOT.",posX1,posY_letras,c_borde,1,1,c_letra,sep,width,escala,0) 
			draw_text_outline4("TIE THE DOT AND FIND THE CULPRITS, YOUR VOTE AGAINST IS WORTH X2.",posX2,posY_letras,c_borde,1,1,c_letra,sep,width,escala,0) 
			draw_text_outline4("DETECTIVE",posX_titulo+3,posY_titulo+3,c_black,0.75,0.75,c_black,sep,1000,1.15,0) 
			draw_text_outline4("DETECTIVE",posX_titulo,posY_titulo,c_borde_titulo,1,1,c_letra,sep,1000,1.15,0) 
		break;
	}
}
