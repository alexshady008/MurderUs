// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_crea_lista_actual_asesinos(){
	
	#region Crea las listas
		scr_destruye_listas_locales()
		lista_id_jugadores = ds_list_create()
		//lista_jugadores = ds_list_create()
	#endregion
	
	#region Contr las cantidades de id totales actuales
		// Agrega a los impostores
		for(i=0 ; i<ds_list_size(global.impostores_lista) ; i++){
			var impostor_id = real(ds_list_find_value(global.impostores_lista,i))
			ds_list_add(lista_id_jugadores,impostor_id)
		} 
		// Agrega a los complices
		for(i=0 ; i<ds_list_size(global.complices_lista) ; i++){
			var complices_id = real(ds_list_find_value(global.complices_lista,i))
			ds_list_add(lista_id_jugadores,complices_id)
		} 
	#endregion
			
			
			
	#region Contr las cantidades de jugadores totales
		/*if (ds_list_size(lista_id_jugadores)>0){
			for(i=0 ; i<ds_list_size(lista_id_jugadores) ; i++){
				var id_comprobar = ds_list_find_value(lista_id_jugadores,i)
				for(j=0 ; j<ds_list_size(global.jugadores_lista) ; j++){
					var jugador_map = ds_list_find_value(global.jugadores_lista,j)
					var jugador_id = real(ds_map_find_value(jugador_map,"clienteId"))
					if (jugador_id == id_comprobar) {
						ds_list_add(lista_jugadores, jugador_map)
						ds_map_destroy(jugador_map)
						break;  ///
					}	
					ds_map_destroy(jugador_map)
				}
			}
		}*/
	#endregion
}