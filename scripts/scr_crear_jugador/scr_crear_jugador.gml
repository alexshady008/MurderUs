function scr_crear_jugador(id_jugador,nombre_jugador,color_jugador,skin_jugador,prenda_jugador,accesorio_jugador,sombrero_jugador,mascota_jugador) {
	var _id = id_jugador
	var _nombre = nombre_jugador
	var _color = color_jugador
	var _skin = skin_jugador
	var _prenda = prenda_jugador
	var _accesorio = accesorio_jugador
	var _sombrero = sombrero_jugador
	var _mascota = mascota_jugador
	var id_inst = noone


	var jugador_creado = false
	var cant_contr_pos = instance_number(obj_contr_pos_personaje)
	for (a=0 ; a<cant_contr_pos ; a++)
	{
		var contr_pos = instance_find(obj_contr_pos_personaje,a)
		if (contr_pos.ocupado==false and contr_pos.idJugador!=_id and jugador_creado==false)
		{
			contr_pos.ocupado = true
			contr_pos.idJugador=_id
			jugador_creado = true
								
			// Si es el jugador, crea al jugador
			if (_id==global.idLocal) {
				var personaje = instance_create_layer(contr_pos.x, contr_pos.y, "Personajes", obj_personaje)
				global.jugador = personaje
				global.skinElegido =  _skin
				global.colorElegido = _color
				// Contr el transportador
				scr_contr_spawn_animacion(contr_pos, personaje)	
			}			
			// Si es otro jugador, crea a una entidad
			else {
				var personaje = instance_create_layer(contr_pos.x, contr_pos.y, "Personajes", obj_entidad_online)
				if (mostrarSpawn) scr_contr_spawn_animacion(contr_pos, personaje)	
			}
			
			
		
			#region Comprueba si es un impostor o no
			if (ds_list_size(global.impostores_lista)>0){
				for(b=0 ; b<ds_list_size(global.impostores_lista) ; b++){
					var impostor_id = ds_list_find_value(global.impostores_lista,b)
					if (impostor_id==_id) personaje.impostor=true
				}
			}
			#endregion
		
			#region Comprueba si es un detective o no
			if (ds_list_size(global.detective_lista)>0){
				for(b=0 ; b<ds_list_size(global.detective_lista) ; b++){
					var detective_id = ds_list_find_value(global.detective_lista,b)
					if (detective_id==_id) personaje.detective=true
				}
			}
			#endregion
			
			#region Comprueba si es un complice o no
			if (ds_list_size(global.complices_lista)>0){
				for(b=0 ; b<ds_list_size(global.complices_lista) ; b++){
					var complice_id = ds_list_find_value(global.complices_lista,b)
					if (complice_id==_id) personaje.complice=true
				}
			}
			#endregion
		
			//Le pasa otras variables
			personaje.idContrPos = contr_pos
			personaje.idJugador = _id
			personaje.nombre = _nombre
			personaje.contrColor = _color
			personaje.skin = _skin
			personaje.prenda = _prenda
			personaje.accesorio = _accesorio
			personaje.sombrero = _sombrero
			personaje.mascota = _mascota
			personaje.inst_mascota = instance_create_layer(personaje.x, personaje.y, "Personajes", obj_mascota_personaje)
			personaje.inst_mascota.id_creador = personaje
			personaje.inst_mascota.mascota = _mascota
			personaje.alarm[0]=1
			
			id_inst = personaje
		}
	}


	return id_inst


}
