/// @description Lo dibuja
// Puede escribir su código en este editor

draw_sprite_ext(sprite_index,0,x,y,escalaX,escalaY,0,c_white,1)


//Lo dibuja de color rojo si son impostores o complices
if (/*global.jugador_tipo == "COMPLICE" or */global.jugador_tipo == "IMPOSTOR"){
	if (jugador_inst!=noone and instance_exists(jugador_inst)) {
		if (jugador_inst.impostor==true) draw_sprite_ext(sprite_index,0,x,y,escalaX,escalaY,0,c_red,0.75)
		//else if (jugador_inst.complice==true) draw_sprite_ext(sprite_index,0,x,y,escalaX,escalaY,0,c_red,0.45)
	}	
}


//Dibuja su nombre
if (nombre_jugador!=noone){
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	if (escalaX==1) draw_set_font(fnt_normal)
	else draw_set_font(fnt_chica)
	draw_text_outline2(""+string(nombre_jugador),x,y,c_black,1,1,c_white)   //x-100
}


// Dibuja su icono
var escala_icono = escalaX
if (skin_jugador!=noone){
	scr_dibuja_icono_jugador(skin_jugador,x-(200*escalaX),y,escala_icono, color_jugador)
}

//Dibuja su accesorio y sombrero
var escala_accesorio = escala_icono+(escala_icono/2)
scr_dibuja_accesorio_jug(accesorio_jugador,x-(200*escalaX),y+(30*escala_icono),1,escala_accesorio,escala_accesorio)
scr_dibuja_sombrero_jug(sombrero_jugador,x-(200*escalaX),y+(30*escala_icono),1,escala_accesorio,escala_accesorio)

//Dibuja la lupa si es el detective
if (jugador_inst!=noone and instance_exists(jugador_inst)) {
	if (jugador_inst.detective==true) draw_sprite_ext(spr_icono_lupa,0,x-(165*escalaX),y,escala_icono,escala_icono,0,c_white,1)
}	


// Dibuja el marcador si ese jugador esta muerto
if (jugador_muerto) draw_sprite_ext(sprite_index,0,x,y,escalaX,escalaY,0,c_black,0.75)


//Dibuja el icono de si el jugador fue el informante
if (global.id_jugador_informador!=noone and id_jugador!=noone){
	if (global.id_jugador_informador == id_jugador) draw_sprite_ext(spr_icono_informante,0,x+(200*escalaX),y,escala_icono,escala_icono,0,c_white,1)
}


// Dibuja el icono si el jugador ya ha votado
if (votacion_realizada) {
	if (jugador_inst!=noone and instance_exists(jugador_inst)) {
		if (jugador_inst.detective==true) draw_sprite_ext(spr_icono_votacion_realizada_x2,0,x-(250*escalaX),y,escala_icono,escala_icono,0,c_white,1)
		else draw_sprite_ext(spr_icono_votacion_realizada_x1,0,x-(250*escalaX),y,escala_icono,escala_icono,0,c_white,1)
	}
}	
