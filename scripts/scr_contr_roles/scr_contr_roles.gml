// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_contr_roles(){
	// Contr si el jugador es un impostor
	var cant_impostores = ds_list_size(global.impostores_lista)
	for (i=0 ; i<cant_impostores ; i++){
			var impostor_id = real(ds_list_find_value(global.impostores_lista,i))
			if (impostor_id == global.idLocal) global.jugador_tipo = "IMPOSTOR"
	} 
	
	// Contr si el jugador es un detective
	var cant_detective = ds_list_size(global.detective_lista)
	for (i=0 ; i<cant_detective ; i++){
			var detective_id = real(ds_list_find_value(global.detective_lista,i))
			if (detective_id == global.idLocal) global.jugador_tipo = "DETECTIVE"
	}
	
	// Contr si el jugador es un complice
	var cant_complice = ds_list_size(global.complices_lista)
	for (i=0 ; i<cant_complice ; i++){
			var complice_id = real(ds_list_find_value(global.complices_lista,i))
			if (complice_id == global.idLocal) global.jugador_tipo = "COMPLICE"
	}
}