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
	var cant_lugares = ds_list_size(global.nombre_habitaciones)
	show_debug_message("CANT DE LUGARES: "+string(cant_lugares))
	var posY = cam_y+150
	var n = 0
	for(i=0 ; i<cant_lugares ; i++)
	{
		#region COntr pos en X
			if (cant_lugares<=10){
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
			else if (cant_lugares>10){
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
			var nombre_lugar = ds_list_find_value(global.nombre_habitaciones,i)
			// Crea el boton
			var btn = instance_create_depth(posX,posY,depth-1,obj_btn_elegir_lugar_msjes)
			btn.nombre_lugar = nombre_lugar
			// Escala
			if (cant_lugares>10) {
				btn.escalaX=0.70
				btn.escalaX_inicial=0.70
			}
		#endregion
	}
	
	// Contr el boton de Volver
	if (instance_exists(obj_volver_msjes_automaticos)){
		if (cant_lugares>=16 and cant_lugares<=18) obj_volver_msjes_automaticos.y = posY+85
		else if (cant_lugares>18) obj_volver_msjes_automaticos.y = posY
		obj_volver_msjes_automaticos.depth = depth-1
	}
#endregion

