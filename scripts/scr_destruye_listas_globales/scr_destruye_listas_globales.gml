// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_destruye_listas_globales(){
	#region Destruye la lista de id 
		if (global.jugadores_id!=noone and ds_exists(global.jugadores_id,ds_type_list)) ds_list_destroy(global.jugadores_id)
	#endregion
	
	#region Destruye la lista de jugadores
	if (global.jugadores_lista!=noone and ds_exists(global.jugadores_lista,ds_type_list)) {
		for(h=0 ; h<ds_list_size(global.jugadores_lista) ; h++){
			var jugador_map = ds_list_find_value(global.jugadores_lista,h)
			ds_map_destroy(jugador_map)
		}
		ds_list_destroy(global.jugadores_lista)
	}
	#endregion
	
	#region Destruye la lista de datos del servidor
	if (global.servidorDatos!=noone and ds_exists(global.servidorDatos,ds_type_list)) {
		for(k=0 ; k<ds_list_size(global.servidorDatos) ; k++){
			var datos_map = ds_list_find_value(global.servidorDatos,k)
			ds_map_destroy(datos_map)
		}
		ds_list_destroy(global.servidorDatos)
	}
	#endregion
	
	#region Destruye otrs listas
		if (ds_exists(global.mensajes_lista,ds_type_list)) ds_list_destroy(global.mensajes_lista) 
		if (ds_exists(global.impostores_lista,ds_type_list)) ds_list_destroy(global.impostores_lista) 
		if (ds_exists(global.detective_lista,ds_type_list)) ds_list_destroy(global.detective_lista) 
		if (ds_exists(global.complices_lista,ds_type_list)) ds_list_destroy(global.complices_lista) 
		if (ds_exists(global.lista_tareas,ds_type_list)) ds_list_destroy(global.lista_tareas) 
	#endregion
	
	#region Reinicia las variables
		global.jugadores_id = noone
		global.jugadores_lista = noone
		global.servidorDatos = noone
	#endregion
}

/*
if (ds_exists(global.jugadores_id,ds_type_list)) ds_list_destroy(global.jugadores_id) 
if (ds_exists(global.jugadores_lista,ds_type_list)) ds_list_destroy(global.jugadores_lista) 
if (ds_exists(global.servidorDatos,ds_type_list)) ds_list_destroy(global.servidorDatos) 