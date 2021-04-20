// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_destruye_listas_locales(){
	//mostrarPantallaFinal = false
	
	// Destruye la lista de id 
	if (lista_id_jugadores!=noone and ds_exists(lista_id_jugadores,ds_type_list)) ds_list_destroy(lista_id_jugadores)
	
	// Destruye la lista de jugadores
	/*if (lista_jugadores!=noone and ds_exists(lista_jugadores,ds_type_list)) {
		for(h=0 ; h<ds_list_size(lista_jugadores) ; h++){
			var jugador_map = ds_list_find_value(lista_jugadores,h)
			ds_map_destroy(jugador_map)
		}
		ds_list_destroy(lista_jugadores)
	}*/
	
	// Reinicia las variables
	lista_id_jugadores = noone
	//lista_jugadores = noone
}