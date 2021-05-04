/// @description Crea los bts de los jugadores
// Puede escribir su código en este editor
#region Propiedades de la camara
	 cam_x = camera_get_view_x(view_camera[0]) 
	 cam_y = camera_get_view_y(view_camera[0]) 
	 cam_ancho = camera_get_view_width(view_camera[0])
	 cam_alto = camera_get_view_height(view_camera[0])
#endregion

btn_opcion = noone

#region Crea los botones
	var cant_jugadores = ds_list_size(global.jugadores_lista)
	var posY = cam_y+150
	var n = 0
	for(i=0 ; i<cant_jugadores ; i++)
	{
		#region COntr pos en X
			if (cant_jugadores<=10){
				if (n == 0) { 
					var posX = cam_x+370
					if (i != 0) posY += 85
					n=1
				}	
				else if (n == 1) {
					var posX = cam_x+910
					n = 0
				}
			}
			else if (cant_jugadores>10){
				if (n == 0) { 
					var posX = cam_x+230
					if (i != 0) posY += 85
					n=1
				}	
				else if (n == 1) {
					var posX = cam_x+640  //590
					n = 2
				}
				else if (n == 2) {
					var posX = cam_x+1040
					n = 0
				}
			}
		#endregion
		
		#region Crea a los botones para votar
			var jugador_map = ds_list_find_value(global.jugadores_lista,i)
			var nombre_jugador = ds_map_find_value(jugador_map,"clienteNombre")
			var skin_jugador = real(ds_map_find_value(jugador_map,"clienteSkin"))
			var accesorio_jugador = real(ds_map_find_value(jugador_map,"clienteAccesorio"))
			var sombrero_jugador = real(ds_map_find_value(jugador_map,"clienteSombrero"))
			var jugador_inst = ds_map_find_value(jugador_map,"idObjeto")
			var jugador_tipo_color = real(ds_map_find_value(jugador_map,"clienteColor"))
			//Color
			if (skin_jugador==1) var color_jugador = scr_crear_color(jugador_tipo_color)
			else color_jugador = c_white
			// Crea el boton
			var btn = instance_create_depth(posX,posY,depth-1,obj_btn_elegir_jugador_msjes)
			btn.nombre_jugador = nombre_jugador
			btn.skin_jugador = skin_jugador
			btn.color_jugador = color_jugador
			btn.accesorio_jugador = accesorio_jugador
			btn.sombrero_jugador = sombrero_jugador
			btn.jugador_inst = jugador_inst
			// Escala
			if (cant_jugadores>10) {
				btn.escalaX=0.70
				btn.escalaX_inicial=0.70
			}	
		#endregion
	}
	
	// Contr el boton de Volver
	if (instance_exists(obj_volver_msjes_automaticos)){
		if (cant_jugadores>=16 and cant_jugadores<=18) obj_volver_msjes_automaticos.y = posY+85
		else if (cant_jugadores>18) obj_volver_msjes_automaticos.y = posY
		obj_volver_msjes_automaticos.depth = depth-1
	}

#endregion

