/// @description Lo dibuja
// Puede escribir su código en este editor

draw_sprite_ext(sprite_index,0,x,y,escalaX,escalaY,0,c_white,1)


#region Dibuja su nombre
if (nombre_jugador!=noone){
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	if (escalaX==1) draw_set_font(fnt_normal)
	else draw_set_font(fnt_chica)
	draw_text_outline2(""+string(nombre_jugador),x,y,c_black,1,1,c_white)   //x-100
}
#endregion


#region  Dibuja su icono
var escala_icono = escalaX
if (skin_jugador!=noone){
	scr_dibuja_icono_jugador(skin_jugador,x-(200*escalaX),y,escala_icono, color_jugador)
}
#endregion

#region Dibuja su accesorio y sombrero
var escala_accesorio = escala_icono+(escala_icono/2)
scr_dibuja_accesorio_jug(accesorio_jugador,x-(200*escalaX),y+(30*escala_icono),1,escala_accesorio,escala_accesorio)
scr_dibuja_sombrero_jug(sombrero_jugador,x-(200*escalaX),y+(30*escala_icono),1,escala_accesorio,escala_accesorio)
#endregion
