/// @description Crea los objetos/partes
// Puede escribir su código en este editor

if (tipo!=false){
	
	switch(tipo){
		
		// Analisis 1
		case 1:
			#region Dibuja el tubo de ensayo y los signos
				instance_create_layer(global.cam_x+361,global.cam_y+316,"Interfaz_tareas",obj_tubo_ensayo_colores)
				
				var posX = global.cam_x+784
				var posY = global.cam_y+512
				for(i=0 ; i<cant_signos ; i++){
					var signo = instance_create_layer(posX,posY,"Interfaz_tareas",obj_signo)
					signo.tipo = tipo
					signo.signo = i
					#region Contr las pos X e Y
						if (i==2){
							posX = global.cam_x+784
							posY = global.cam_y+624
						}
						else {
							posX += 150
						}
					#endregion
				}
			#endregion
		break
		
		// Analisis 2
		case 2:
			#region Dibuja el tubo de ensayo y las manchas
				instance_create_layer(global.cam_x+361,global.cam_y+316,"Interfaz_tareas",obj_tubo_ensayo_manchas)
				
				var posX = global.cam_x+784
				var posY = global.cam_y+512
				for(i=0 ; i<cant_signos ; i++){
					var signo = instance_create_layer(posX,posY,"Interfaz_tareas",obj_signo)
					signo.tipo = tipo
					signo.signo = i
					#region Contr las pos X e Y
						if (i==2){
							posX = global.cam_x+784
							posY = global.cam_y+624
						}
						else {
							posX += 150
						}
					#endregion
				}
			#endregion
		break
		
		// Analisis 3
		case 3:
			#region Dibuja la piedra y los signos
				instance_create_layer(global.cam_x+322,global.cam_y+334,"Interfaz_tareas",obj_humo_piedra)
				instance_create_layer(global.cam_x+322,global.cam_y+334,"Interfaz_tareas",obj_piedra_con_signo)
				var posX = global.cam_x+800  //768
				var posY = global.cam_y+464
				for(i=0 ; i<cant_signos ; i++){
					var signo = instance_create_layer(posX,posY,"Interfaz_tareas",obj_signo)
					signo.tipo = tipo
					signo.signo = i
					#region Contr las pos X e Y
						if (i==2){
							posX = global.cam_x+800
							posY = global.cam_y+608
						}
						else {
							posX += 144
						}
					#endregion
				}
			#endregion
		break
		
	}
	
}