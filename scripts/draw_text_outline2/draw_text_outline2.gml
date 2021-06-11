/// Letras con bordes medianos
function draw_text_outline2(valor, posX, posY, c_borde, alfa_borde, alfa_letra, c_letra) {

	draw_set_alpha(alfa_borde)
	draw_set_colour(c_borde)
	draw_text(posX+2,posY+2,string(valor))
	draw_text(posX-2,posY-2,string(valor))
	draw_text(posX,posY+2,string(valor))
	draw_text(posX+2,posY,string(valor))
	draw_text(posX,posY-2,string(valor))
	draw_text(posX-2,posY,string(valor))
	draw_text(posX-2,posY+2,string(valor))
	draw_text(posX+2,posY-2,string(valor))
	draw_set_alpha(alfa_letra)
	draw_set_colour(c_letra)
	draw_text(posX,posY,string(valor))



}
