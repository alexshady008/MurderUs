// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_dibuja_texto_escena3(posX, posY, c_letra, c_borde){
	draw_set_halign(fa_center)
	draw_set_valign(fa_top)
	draw_set_font(fnt_grande)
	var sep = 75
	var width = 1200
	var escala = 0.65
	switch(os_get_language()) {
		case "es": draw_text_outline4("La nueva tripulación clonada, dirigidos por la Inteligencia Artificial Centra, lograron expandir Spaceship y establecer una base en su luna Lyra, así como comenzar la exploración de nuevos planetas.",posX,posY,c_borde,1,1,c_letra,sep,width,escala,0) break;
		case "pt": draw_text_outline4("A nova tripulação clonada, liderada pelo Centra Artificial Intelligence, conseguiu expandir a nave espacial e estabelecer uma base em sua lua Lyra, bem como iniciar a exploração de novos planetas.",posX,posY,c_borde,1,1,c_letra,sep,width,escala,0) break;
		default: draw_text_outline4("The new cloned crew, led by the Centra Artificial Intelligence, managed to expand Spaceship, and establish a base on their moon Lyra, as well as begin the exploration of new planets.",posX,posY,c_borde,1,1,c_letra,sep,width,escala,0) break;
	}
}