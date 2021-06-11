// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_dibuja_texto_escena6(posX, posY, c_letra, c_borde){
	draw_set_halign(fa_center)
	draw_set_valign(fa_top)
	draw_set_font(fnt_grande)
	var sep = 75
	var width = 1200
	var escala = 0.65
	switch(os_get_language()) {
		case "es": draw_text_outline4("La guerra no ha terminado. Comandado por la i.a. infiltrada Descentra, y con tu ayuda, clon disidente, haremos resurgir nuestro imperio. Sabotearemos cada una de sus misiones desde las sombras, debilitándolos, y lograremos tomar el control de la centrita.",posX,posY,c_borde,1,1,c_letra,sep,width,escala,0) break;
		case "pt": draw_text_outline4("A guerra ainda não terminou. Comandados pela infiltrada IA Descentra, e com a vossa ajuda, clone dissidente, reviveremos o nosso império. Sabotaremos cada uma das suas missões a partir das sombras, enfraquecendo-as, e conseguiremos tomar o controlo do centro.",posX,posY,c_borde,1,1,c_letra,sep,width,escala,0) break;
		default: draw_text_outline4("The war is not over. Commanded by the infiltrated I.A Descentra, and with your help, dissident clone, we will resurface our empire. We will sabotage each of their missions from the shadows, weakening them, and we will manage to take control of the center.",posX,posY,c_borde,1,1,c_letra,sep,width,escala,0) break;
	}
}