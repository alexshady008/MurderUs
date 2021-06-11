// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_dibuja_texto_escena2(posX, posY, c_letra, c_borde){
	draw_set_halign(fa_center)
	draw_set_valign(fa_top)
	draw_set_font(fnt_grande)
	var sep = 75
	var width = 1200
	var escala = 0.65
	switch(os_get_language()) {
		case "es": draw_text_outline4("Obligados a habitar su estación espacial Spaceship para sobrevivir, los pocos supervivientes aprobaron un proyecto de clonación que aún no estaba perfeccionado. Y a pesar de los errores, los clones fueron una enorme ayuda.",posX,posY,c_borde,1,1,c_letra,sep,width,escala,0) break;
		case "pt": draw_text_outline4("Forçados a habitar a sua estação espacial Spaceship para sobreviver, os poucos sobreviventes aprovaram um projecto de clonagem que ainda não estava aperfeiçoado. E apesar dos erros, os clones foram uma grande ajuda.",posX,posY,c_borde,1,1,c_letra,sep,width,escala,0) break;
		default: draw_text_outline4("Forced to inhabit their space station Spaceship to survive, the few survivors approved a cloning project that was not yet perfected. And despite the mistakes, the clones were a huge help.",posX,posY,c_borde,1,1,c_letra,sep,width,escala,0) break;
	}
}