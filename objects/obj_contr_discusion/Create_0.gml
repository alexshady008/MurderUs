/// @description Variables
// Puede escribir su código en este editor

#region Propiedades de la camara
	cam_x = camera_get_view_x(view_camera[0]) 
	cam_y = camera_get_view_y(view_camera[0]) 
	cam_ancho = camera_get_view_width(view_camera[0])
	cam_alto = camera_get_view_height(view_camera[0])
#endregion

#region Variables
global.contr_votacion =  false
global.votar_impostor = noone
global.chat = false
contador = 60
//alarm[0] = room_speed
#endregion


#region Crea los botones
	var btn_chat = instance_create_layer(1200,48,"Interfaz_discusion",obj_btn_chat)
	btn_chat.posicion_discusion = true
	var btn_chat2 = instance_create_layer(1200,48,"Interfaz_discusion",obj_btn_msjs_automaticos)
	btn_chat2.posicion_discusion = true
	
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
					//var posX = cam_x+230
					var posX = cam_x+280
					if (i != 0) posY += 85
					n=1
				}	
				else if (n == 1) {
					var posX = cam_x+640  //590
					n = 2
				}
				else if (n == 2) {
					//var posX = cam_x+1040
					var posX = cam_x+1000
					n = 0
				}
			}
		#endregion
		
		#region Crea a los botones para votar
			var jugador_map = ds_list_find_value(global.jugadores_lista,i)
			var id_jugador = real(ds_map_find_value(jugador_map,"clienteId"))
			var nombre_jugador = ds_map_find_value(jugador_map,"clienteNombre")
			var skin_jugador = real(ds_map_find_value(jugador_map,"clienteSkin"))
			var accesorio_jugador = real(ds_map_find_value(jugador_map,"clienteAccesorio"))
			var sombrero_jugador = real(ds_map_find_value(jugador_map,"clienteSombrero"))
			var jugador_inst = ds_map_find_value(jugador_map,"idObjeto")
			var jugador_tipo_color = real(ds_map_find_value(jugador_map,"clienteColor"))
			if (skin_jugador==1) var color_jugador = scr_crear_color(jugador_tipo_color)
			else color_jugador = c_white
			var btn = instance_create_layer(posX,posY,"Interfaz_discusion",obj_btn_votar_impostor)
			btn.id_jugador = id_jugador
			btn.nombre_jugador = nombre_jugador
			btn.skin_jugador = skin_jugador
			btn.color_jugador = color_jugador
			btn.accesorio_jugador = accesorio_jugador
			btn.sombrero_jugador = sombrero_jugador
			btn.jugador_inst = jugador_inst
			if (instance_exists(jugador_inst)) btn.jugador_muerto = jugador_inst.muerto
			if (cant_jugadores>10) {
				btn.escalaX=0.70
				btn.escalaX_inicial=0.70
			}	
		#endregion
		

	}
	
	// Crea el boton de Skip
	if (cant_jugadores<=18) instance_create_layer(cam_x+1040,posY+85,"Interfaz_discusion",obj_btn_pasar_votacion)
	else instance_create_layer(cam_x+1040,posY,"Interfaz_discusion",obj_btn_pasar_votacion)
#endregion