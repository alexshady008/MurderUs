/// Letras con bordes chicos
function draw_text_outline3(valor, posX, posY, c_borde, alfa_borde, alfa_letra, c_letra) {
	
	draw_set_alpha(alfa_borde)
	draw_set_colour(c_borde)
	draw_text(posX+1,posY+1,string(valor))
	draw_text(posX-1,posY-1,string(valor))
	draw_text(posX,posY+1,string(valor))
	draw_text(posX+1,posY,string(valor))
	draw_text(posX,posY-1,string(valor))
	draw_text(posX-1,posY,string(valor))
	draw_text(posX-1,posY+1,string(valor))
	draw_text(posX+1,posY-1,string(valor))
	draw_set_alpha(alfa_letra)
	draw_set_colour(c_letra)
	draw_text(posX,posY,string(valor))



}
