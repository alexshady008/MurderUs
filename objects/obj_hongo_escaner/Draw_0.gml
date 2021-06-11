/// @description Lo dibuja
// Puede escribir su código en este editor
draw_sprite(sprite_index,0,x,y)


//Contr la luz del escaner
if !(inactivo){
	if (escaneando){
		draw_sprite_ext(spr_hongo_escaner_luz, 0, x, y, 1, 1, 0, c_white, luz_alfa)
	}
}
else {
	draw_sprite_ext(sprite_index,0,x,y,1,1,0,c_black,0.35)
}


//Dibuja la pantalla 
var posX = x+70  //95
var posY = y  //16
draw_sprite(spr_hongo_pantalla_vacia,0,posX,posY)

if !(escaner_finalizado){
	if !(escaneando) draw_sprite(spr_hongo_pantalla_img1,0,posX,posY)
	else {
		draw_set_halign(fa_center)
		draw_set_valign(fa_middle)
		draw_set_font(fnt_muy_chica)
		var color = make_color_rgb(0,255,248)
		var valor = luz_alfa*100
		draw_healthbar(posX-28, posY, posX+28, posY+15, valor, c_black, color, color, 0, false, false)
		draw_text_ext_transformed_color(posX, posY-20, "scanning", 10, 70, 0.9, 0.9, 0, color, color, color, color, 1)
	}	
}
else if (escaner_finalizado){
	if (manchado) draw_sprite(spr_hongo_pantalla_img2,0,posX,posY)
	else draw_sprite(spr_hongo_pantalla_img3,0,posX,posY)
}