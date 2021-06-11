/// @description Crea los objetos/partes
// Puede escribir su código en este editor

if (tipo!=false){
	randomize()
	
	switch(tipo){
		
		// Completar 1
		case 1:
			#region Propiedades y Crea los objetos
				total_puntos_objetivos = 1
				rango_objetivo = 4 
				retroceso = false
				for(i=0 ; i<total_puntos_objetivos ; i++){
					punto_objetivo[i] = irandom_range(10,100)
					punto_actual[i] = 0
					completando[i] = false
					var posX_minimo = global.cam_x+288
					var posX_maximo = global.cam_x+1024
					var indicador = instance_create_layer(global.cam_x+288,global.cam_y+384,"Interfaz_tareas",obj_indicador_transmision_completar)
					indicador.posX_minimo = posX_minimo
					indicador.posX_maximo = posX_maximo
					indicador.num = i
				}
				instance_create_layer(global.cam_x+788,global.cam_y+226,"Interfaz_tareas",obj_transmision_completar)
			#endregion
			/// sonido
			//if (global.musica) sonido = audio_play_sound(snd_interferencia,100,true) 
		break
		
		// Completar 2
		case 2:
			#region Propiedades y Crea los objetos
				total_puntos_objetivos = 1
				rango_objetivo = 10
				retroceso = true
				for(i=0 ; i<total_puntos_objetivos ; i++){
					punto_objetivo[i] = irandom_range(50,80)
					punto_actual[i] = 0
					completando[i] = false
					var btn_temperatura = instance_create_layer(global.cam_x+640,global.cam_y+185,"Interfaz_tareas",obj_btn_temperatura_completar_2)
					btn_temperatura.num = i
				}
			#endregion
			/// sonido
			if (global.musica) sonido = audio_play_sound(snd_fuego,100,true) 
		break
		
		// Completar 3
		case 3:
			#region Propiedades y Crea los objetos
				total_puntos_objetivos = 3
				rango_objetivo = 15
				retroceso = true
				var posY = 359
				var posX = 436
				for(i=0 ; i<total_puntos_objetivos ; i++){
					punto_objetivo[i] = irandom_range(30,70)
					punto_actual[i] = 0
					completando[i] = false
					var btn_energia = instance_create_layer(global.cam_x+posX,global.cam_y+posY,"Interfaz_tareas",obj_btn_energia_completar_3)
					btn_energia.num = i
					posX+=202
				}
			#endregion
			/// sonido
			if (global.musica) sonido = audio_play_sound(snd_electricidad,100,true) 
		break
		
	}
	
}