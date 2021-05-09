function scr_contr_pers_muerto(skin_param, color_param, nombre_param) {
	var skinAsesino = skin_param
	var colorAsesino = color_param
	var nombreAsesino = nombre_param
	var es_detective = detective
	scr_config_fisica_pers_muerto()

	var pers_muerto = instance_create_depth(x,y,global.depth_piso-1,obj_personaje_muerto)
	pers_muerto.idJugador = idJugador
	pers_muerto.contrColor = contrColor
	pers_muerto.skin = skin
	pers_muerto.prenda = prenda
	pers_muerto.sombrero = sombrero
	pers_muerto.accesorio = accesorio
	pers_muerto.mascota = mascota
	pers_muerto.detective = es_detective
	if (direccion != noone) pers_muerto.direccion = direccion
	else pers_muerto.direccion = dirAnterior
	pers_muerto.alarm[0]  = 1


	// Crea la pista en el cuerpo
	if (global.jugador_tipo == "DETECTIVE" or global.jugador_tipo=="IMPOSTOR"){
		// Contr el color de la huella dactilar
		if (colorAsesino!=noone) {
			pers_muerto.color_pista = colorAsesino
			pers_muerto.skin_pista = skinAsesino
			if (global.step_delta>=1) pers_muerto.alarm[1] = (room_speed*30)/global.step_delta;
			else pers_muerto.alarm[1] = room_speed*30;
		}	
		// Contr la letra de la pista
		if (nombreAsesino!=noone) {
			var letra = string_copy(nombreAsesino,1,1)
			pers_muerto.letra_pista = letra
		}	
	}


}
