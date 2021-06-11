/// Letras transformadas con bordes medianos
function draw_text_outline4(valor, posX, posY, c_borde, alfa_borde, alfa_letra, c_letra, sep, w, escala, angulo) {

	draw_set_alpha(alfa_borde)
	draw_set_colour(c_borde)
	draw_text_ext_transformed(posX+2,posY+2,string(valor),sep,w,escala,escala,angulo)
	draw_text_ext_transformed(posX-2,posY-2,string(valor),sep,w,escala,escala,angulo)
	draw_text_ext_transformed(posX,posY+2,string(valor),sep,w,escala,escala,angulo)
	draw_text_ext_transformed(posX+2,posY,string(valor),sep,w,escala,escala,angulo)
	draw_text_ext_transformed(posX,posY-2,string(valor),sep,w,escala,escala,angulo)
	draw_text_ext_transformed(posX-2,posY,string(valor),sep,w,escala,escala,angulo)
	draw_text_ext_transformed(posX-2,posY+2,string(valor),sep,w,escala,escala,angulo)
	draw_text_ext_transformed(posX+2,posY-2,string(valor),sep,w,escala,escala,angulo)
	draw_set_alpha(alfa_letra)
	draw_set_colour(c_letra)
	draw_text_ext_transformed(posX,posY,string(valor),sep,w,escala,escala,angulo)



}
