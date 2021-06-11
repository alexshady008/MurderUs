/// @description Crea a los jugadores
// Puede escribir su código en este editor

var cant_jugadores = ds_list_size(global.jugadores_lista)

for(i=0 ; i<cant_jugadores ; i++)
{
	var jugador = ds_list_find_value(global.jugadores_lista,i)
	var id_jugador = real(ds_map_find_value(jugador,"clienteId"))
	var nombre_jugador = ds_map_find_value(jugador,"clienteNombre")
	var color_jugador = real(ds_map_find_value(jugador,"clienteColor"))
	var skin_jugador = real(ds_map_find_value(jugador,"clienteSkin"))
	var prenda_jugador = real(ds_map_find_value(jugador,"clientePrenda"))
	var accesorio_jugador = real(ds_map_find_value(jugador,"clienteAccesorio"))
	var sombrero_jugador = real(ds_map_find_value(jugador,"clienteSombrero"))
	var mascota_jugador = real(ds_map_find_value(jugador,"clienteMascota"))
							
	var id_instancia = scr_crear_jugador(id_jugador,nombre_jugador,color_jugador,skin_jugador,prenda_jugador,accesorio_jugador,sombrero_jugador,mascota_jugador)
	
	#region Crea o actualiza su id del objeto
		var idObjeto = ds_map_find_value(jugador,"idObjeto")
		if is_undefined(idObjeto){
			ds_map_add(jugador,"idObjeto",id_instancia)
		} else {
			ds_map_delete(jugador,"idObjeto")
			ds_map_add(jugador,"idObjeto",id_instancia)
		}
	#endregion
								
}


#region Contr la camara
	/*if (global.jugador!=noone){
		global.camara = camera_create_view(0,0,1280,720,0,global.jugador,-1,-1,640,360)
		view_camera[0] = global.camara
	}*/
	scr_crea_camara_jugador()
#endregion