/// @description Contr los skins del asesino y del asesinado
// Puede escribir su código en este editor

if (id_jugador_asesinado!=noone and id_jugador_asesino!=noone){
	for(i=0 ; i<ds_list_size(global.jugadores_lista) ; i++){
		var jugador = ds_list_find_value(global.jugadores_lista,i)
		var id_jugador = real(ds_map_find_value(jugador,"clienteId"))
		
		//Skins del asesino
		if (id_jugador==id_jugador_asesino) {
			contrColor_asesino = real(ds_map_find_value(jugador,"clienteColor"))
			skin_asesino = real(ds_map_find_value(jugador,"clienteSkin"))
			//accesorio_asesino = real(ds_map_find_value(jugador,"clienteAccesorio"))
			//sombrero_asesino = real(ds_map_find_value(jugador,"clienteSombrero"))
			//mascota_asesino = real(ds_map_find_value(jugador,"clienteMascota"))
			if (skin_asesino==1) {
				color_asesino = scr_crear_color(contrColor_asesino)
				randomize()
				tipo_animacion_asesino = irandom_range(1,6)
			}	
			else {
				color_asesino = c_white
				tipo_animacion_asesino = 2
			}	
		}
		
		//Skins del asesinado
		if (id_jugador==id_jugador_asesinado) {
			contrColor_asesinado = real(ds_map_find_value(jugador,"clienteColor"))
			skin_asesinado = real(ds_map_find_value(jugador,"clienteSkin"))
			//accesorio_asesinado = real(ds_map_find_value(jugador,"clienteAccesorio"))
			//sombrero_asesinado = real(ds_map_find_value(jugador,"clienteSombrero"))
			//mascota_asesinado = real(ds_map_find_value(jugador,"clienteMascota"))
			if (skin_asesinado==1) color_asesinado = scr_crear_color(contrColor_asesinado)
			else color_asesinado = c_white
		}
	}						
}

//Contr los frames maximo de cada animacion 
max_frame = scr_frame_max_animacion_asesinar(skin_asesino,tipo_animacion_asesino)

if (global.step_delta>=1) alarm[1] = tiempo_frame/global.step_delta  //Cambia el fram de la animacion
else alarm[1] = tiempo_frame  //Cambia el fram de la animacion
 
