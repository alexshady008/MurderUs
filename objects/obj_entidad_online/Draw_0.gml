/// @description Lo dibuja
// Puede escribir su código en este editor

// Prop de las letras
//if !(detective) var posY = y-55
//else var posY = y-65
var posY = y-65
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_set_font(fnt_muy_chica)


if !(muerto) {
	draw_sprite_ext(spr_sombra_pers, 0, x, y+43, 1, 1, 0, c_white, 0.35)
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, color, 1)
	
	#region DIbuja la prenda
		// Corriendo
		if (moviendose) scr_dibuja_prenda_jug_corriendo(prenda,image_index,x,y,image_alpha,image_xscale,image_yscale)
		// Parado
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
	
	#region Dibuja el nombre
		if (nombre!=noone) draw_text_outline3(nombre,x,posY,c_black,1,1,c_white)
	#endregion
} else {
	if (global.muerto) {
		draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, color, 0.5)
		
		#region DIbuja la prenda
			// Fantasma
			scr_dibuja_prenda_jug_fantasma(prenda,image_index,x,y,image_alpha,image_xscale,image_yscale)
		#endregion
		
		#region Dibuja los accesorios
			scr_dibuja_accesorio_jug(accesorio,x,y,0.5,image_xscale,image_yscale)
		#endregion
		
		#region Dibuja el sombrero
			scr_dibuja_sombrero_jug(sombrero,x,y,0.5,image_xscale,image_yscale)
		#endregion
		
		//Dibuja el gorro si es el detective
		//if (detective) draw_sprite_ext(spr_gorro_detective, 0, x, y-40, 1, 1, 0, c_white, 0.5)
		
		#region  Dibuja el nombre
			if (nombre!=noone) draw_text_outline3(nombre,x,posY,c_black,1,1,c_white)
		#endregion

	}	
}	


//if (anterior_limpiando_rastro) draw_text_outline3("LIMPIANDO...",x,posY-25,c_black,1,1,c_red)
/*draw_text_outline3(""+string(anterior_limpiando_rastro),x,posY-25,c_black,1,1,c_red)
if (anterior_limpiando_rastro) draw_text_outline3("T1",x-30,posY-50,c_black,1,1,c_green)
if (objetivo_limpiando_rastro) draw_text_outline3("T2",x+30,posY-50,c_black,1,1,c_yellow)








