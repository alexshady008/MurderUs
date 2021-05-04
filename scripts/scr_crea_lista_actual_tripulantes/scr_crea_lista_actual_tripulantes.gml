// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_crea_lista_actual_tripulantes(){
	
	#region Crea las listas
		scr_destruye_listas_locales()
		lista_id_jugadores = ds_list_create()
		//lista_jugadores = ds_list_create()
	#endregion
	
	#region Contr los id que van en la lista de NO jugadores
		var ids_no_tripulantes = ds_list_create()
		// Agrega a los impostores a la lista de no jugadores
		for(i=0 ; i<ds_list_size(global.impostores_lista) ; i++){
			var impostor_id = real(ds_list_find_value(global.impostores_lista,i))
			ds_list_add(ids_no_tripulantes,impostor_id)
		} 
		// Agrega a los complices a la lista de no jugadores
		for(i=0 ; i<ds_list_size(global.complices_lista) ; i++){
			var complices_id = real(ds_list_find_value(global.complices_lista,i))
			ds_list_add(ids_no_tripulantes,complices_id)
		} 
	#endregion
	
	#region Contr los id que van en la lista de jugadores
		// Agrega a los detectives
		/*for(i=0 ; i<ds_list_size(global.detective_lista) ; i++){
			var detective_id = real(ds_list_find_value(global.detective_lista,i))
			ds_list_add(lista_id_jugadores,detective_id)
		} */
	#endregion
	
	#region Contr los id de los tripulantes
		for(i=0 ; i<ds_list_size(global.jugadores_id) ; i++)
		{	
			var es_tripulante = true
			var jugador_id = real(ds_list_find_value(global.jugadores_id,i))
			//Recorre la lista de no tripulantes
			for(j=0 ; j<ds_list_size(ids_no_tripulantes) ; j++){
				var no_tripulante_id = ds_list_find_value(ids_no_tripulantes,j)
				if (no_tripulante_id==jugador_id and es_tripulante==true) es_tripulante=false 
			}
			// Si es tripulante lo agrega a la lista
			if (es_tripulante) ds_list_add(lista_id_jugadores,jugador_id)
		}	
		
		ds_list_destroy(ids_no_tripulantes)
	#endregion
						
						
						
	#region Contr las cantidades de jugadores totales
	/*
		// SI hay asesinos
		if (ds_list_size(ids_no_tripulantes)>0){
				for(i=0 ; i<ds_list_size(global.jugadores_lista) ; i++)
				{
					var jugador_map = ds_list_find_value(global.jugadores_lista,i)
					var jugador_id = real(ds_map_find_value(jugador_map,"clienteId"))
					var es_tripulante = true
					
					// Recorre la lista de no tripulantes para verificar si ese jugador id es tripulante o asesino
					for(j=0 ; j<ds_list_size(ids_no_tripulantes) ; j++){
						var id_comprobar = ds_list_find_value(ids_no_tripulantes,j)
						if (jugador_id==id_comprobar and es_tripulante==true) {
							es_tripulante = false
							show_debug_message("ES TRIPULANTE!")  ////////////////////////
							//break; ///
						}	
					}
		
					//Si es tripulante, lo agrega a la lista
					if (es_tripulante) {
						ds_list_add(lista_id_jugadores, jugador_id)
						ds_list_add(lista_jugadores, jugador_map)
					}	
		
					//ds_map_destroy(jugador_map) ////////
				}
				
				show_debug_message("EL TAMANIO DE LA LISTA ES: "+string(ds_list_size(lista_jugadores)))  //////////////
		}
		
		// SI no hay asesinos
		else {
			show_debug_message("knnbvjcnbjkvc")
			for(i=0 ; i<ds_list_size(global.jugadores_lista) ; i++){
				var jugador_map = ds_list_find_value(global.jugadores_lista,i)
				var jugador_id = real(ds_map_find_value(jugador_map,"clienteId"))
				ds_list_add(lista_id_jugadores, jugador_id)
				ds_list_add(lista_jugadores, jugador_map)
				ds_map_destroy(jugador_map)
			}		
		}
		*/
	#endregion	
}