// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_dibuja_texto_escena4(c_letra, c_borde, posX_titulo, posY_titulo){

	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	draw_set_font(fnt_grande)
	var sep = 60
	var width = 600
	var escala = 0.75
	var posX1 = (room_width/2)-320
	var posX2 = (room_width/2)+320
	var posY_letras = room_height-75
	switch(os_get_language()) {
		case "es": 
			draw_text_outline4("REALIZA LAS TAREAS DE LA MISIÓN Y REPARA DESPERFECTOS.",posX1,posY_letras,c_borde,1,1,c_letra,sep,width,escala,0) 
			draw_text_outline4("TEN CUIDADO CON LOS CLONES SOSPECHOSOS Y REPORTA LAS COSAS ANORMALES.",posX2,posY_letras,c_borde,1,1,c_letra,sep,width,escala,0) 
			draw_text_outline4("TRIPULANTES",posX_titulo+3,posY_titulo+3,c_black,0.75,0.75,c_black,sep,1000,1.15,0) 
			draw_text_outline4("TRIPULANTES",posX_titulo,posY_titulo,c_borde,1,1,c_letra,sep,1000,1.15,0) 
		break;
		case "pt": 
			draw_text_outline4("CONCLUA AS TAREFAS DA MISSÃO E REPARE OS DEFEITOS.",posX1,posY_letras,c_borde,1,1,c_letra,sep,width,escala,0) 
			draw_text_outline4("TENHA CUIDADO COM CLONES SUSPEITOS E RELATE COISAS ANORMAIS.",posX2,posY_letras,c_borde,1,1,c_letra,sep,width,escala,0) 
			draw_text_outline4("TRIPULAÇÃO",posX_titulo+3,posY_titulo+3,c_black,0.75,0.75,c_black,sep,1000,1.15,0) 
			draw_text_outline("TRIPULAÇÃO",posX_titulo,posY_titulo,c_borde,1,1,c_letra) 
		break;
		default: 
			draw_text_outline4("COMPLETE THE MISSION TASK AND REPAIR DEFECTS.",posX1,posY_letras,c_borde,1,1,c_letra,sep,width,escala,0) 
			draw_text_outline4("BE CAREFUL OF SUSPICIOUS CLONES AND REPORT ABNORMAL THINGS.",posX2,posY_letras,c_borde,1,1,c_letra,sep,width,escala,0) 
			draw_text_outline4("CREWS",posX_titulo+3,posY_titulo+3,c_black,0.75,0.75,c_black,sep,1000,1.15,0) 
			draw_text_outline("CREWS",posX_titulo,posY_titulo,c_borde,1,1,c_letra) 
		break;
	}
}
