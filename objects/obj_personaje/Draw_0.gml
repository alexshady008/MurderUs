/// @description Lo dibuja
// Puede escribir su código en este editor

if !(muerto) {
	draw_sprite_ext(spr_sombra_pers, 0, x, y+43, 1, 1, 0, c_white, 0.35)
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, color, 1)
	
	#region DIbuja la ropa
		// Corre 
		if (moviendose) scr_dibuja_prenda_jug_corriendo(prenda,image_index,x,y,image_alpha,image_xscale,image_yscale)
		// Se detiene
		else scr_dibuja_prenda_jug_parado(prenda,image_index,x,y,image_alpha,image_xscale,image_yscale)
	#endregion
	
	#region Dibuja los accesorios
		scr_dibuja_accesorio_jug(accesorio,x,y,1,image_xscale,image_yscale)
	#endregion
	
	#region Dibuja el sombrero
		scr_dibuja_sombrero_jug(sombrero,x,y,1,image_xscale,image_yscale)
	#endregion
	
	#region Si es el asesino dibuja la sangre / pista
		if (global.jugador_tipo=="IMPOSTOR" 
		or global.jugador_tipo=="DETECTIVE" 
		or global.jugador_tipo=="COMPLICE"){
			
			if (mostrar_pistas==1) draw_sprite_ext(spr_sangre_pista_cuerpo,0,x,y,1,1,0,color_sangre,1)

		}
	#endregion
	
	#region Dibuja la sangre escaneada
		if (mostrar_pistas==2) draw_sprite_ext(spr_sangre_pista_cuerpo,0,x,y,1,1,0,color_sangre_ultravioleta,1)
	#endregion
}	
else {
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, color, 0.5)
	
	#region DIbuja el skin
		scr_dibuja_prenda_jug_fantasma(prenda,image_index,x,y,0.5,image_xscale,image_yscale)
	#endregion
	
	#region Dibuja los accesorios
		scr_dibuja_accesorio_jug(accesorio,x,y,0.5,image_xscale,image_yscale)
	#endregion
	
	#region Dibuja el sombrero
		scr_dibuja_sombrero_jug(sombrero,x,y,0.5,image_xscale,image_yscale)
	#endregion
}	


//Dibuja el gorro si es el detective
//if (detective) draw_sprite_ext(spr_gorro_detective, 0, x, y-40, 1, 1, 0, c_white, 1)


#region DIbuja el nombre y el icono
//if !(detective) var posY = y-55
//else var posY = y-65
var posY = y-65
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_set_font(fnt_muy_chica)

if (nombre!=noone) draw_text_outline3(nombre,x,posY,c_black,1,1,c_white)
#endregion


#region Dibuja la barra de oxigeno si es una raza 2 en el modo Offline
	if (global.modo_jugabilidad>1 and global.jugador_tipo=="IMPOSTOR"){
		draw_healthbar(x-35,posY-15, x+35, posY-30, global.oxigeno, c_black, c_red, c_lime, 0, true, true)
	}
#endregion

// Borrar
//if (limpiando_rastro) draw_text_outline3("LIMPIANDO...",x,posY-25,c_black,1,1,c_green)



