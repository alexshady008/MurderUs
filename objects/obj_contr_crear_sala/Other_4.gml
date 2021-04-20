/// @description Variables
// Puede escribir su código en este editor

color = c_white
borde = c_black
color2 = make_colour_rgb(12,107,12) 
guardado = false
entradaTeclado = ""
nombre_sala_inicial = "Host_"+string(global.nombre)
tipo_sala_inicial = "publica"
cant_impostores_sala_inicial = 2 //3
cant_detective_sala_inicial = 1 //2
cant_complice_sala_inicial = 1 //2
cant_jugadores_sala_inicial = 8 //15  //10
tipo_mapa_sala_inicial = 1
max_tareas = 10  //14
tiempo_inicial_votacion = 30

global.jugabilidad = true
randomize()
global.idLocal = irandom_range(1,999999999)
randomize()
global.idSala = irandom_range(111111,999999)
// Jugadores
global.cant_max_jugadores_sala = 15   //20
global.cant_min_jugadores_sala = 8    //10  
// Asesinos
global.cant_max_impostores_sala = 3   //4
global.cant_min_impostores_sala = 1
// Detectives
global.cant_max_detectives_sala = 2  //2   
global.cant_min_detectives_sala = 1
// Complice
global.cant_max_complices_sala = 1   //2
global.cant_min_complices_sala = 1
// Tareas
//global.max_tareas_crearse = 14  //10
//global.min_tareas_crearse = 10  //5
// TIempo
global.max_tiempo_votacion = 60
global.min_tiempo_votacion = 10

if (global.editor==false)
{
	global.nombre_sala = nombre_sala_inicial
	global.tipo_sala = tipo_sala_inicial
	global.cant_impostor_sala = cant_impostores_sala_inicial
	global.cant_detective_sala = cant_detective_sala_inicial
	global.cant_complice_sala = cant_complice_sala_inicial
	global.cant_jugadores_sala = cant_jugadores_sala_inicial
	global.tipo_mapa_sala = tipo_mapa_sala_inicial
	global.max_tareas_crearse = max_tareas  //10
	global.min_tareas_crearse = 7  //10
	global.max_tareas = max_tareas
	global.tiempo_votacion = tiempo_inicial_votacion
}
else {
	if (global.datos_nivel_pers!=noone)
	{
		#region contr las tareas de los mapas
		var mapa_datos = global.datos_nivel_pers
		var posMapa = string_pos("$",mapa_datos)
		var numMapa = string_copy(mapa_datos,1,posMapa-1)
		//global.datos_nivel_pers = string_delete(mapa_datos, 1, posMapa)
		global.mapa_elegido = real(numMapa)
		switch(global.mapa_elegido){
			case 1: global.max_tareas_crearse = 10  break
			case 2: global.max_tareas_crearse = 8  break
			case 3: global.max_tareas_crearse = 14  break
		}
		#endregion
		
		global.max_tareas = global.max_tareas_crearse
		global.cant_max_jugadores_sala = 15   //10
		global.cant_min_jugadores_sala = 8
		global.cant_max_impostores_sala = 2  //3
		global.cant_max_detectives_sala = 2
		global.cant_max_complices_sala = 1 
		global.cant_jugadores_sala = global.cant_min_jugadores_sala  //10
		global.cant_impostor_sala = global.cant_max_impostores_sala
		global.cant_detective_sala = global.cant_max_detectives_sala 
		global.cant_complice_sala = global.cant_max_complices_sala
		switch (os_get_language())
		{
			case "es": scr_crear_popup_mensaje("msgChico","Mapa Seleccionado!")  break;
			case "pt": scr_crear_popup_mensaje("msgChico","Mapa selecionado!")  break;
			case "it": scr_crear_popup_mensaje("msgChico","Mappa selezionata! ")  break;
			case "ru": scr_crear_popup_mensaje("msgChico","Выбранная карта")  break;
			default: scr_crear_popup_mensaje("msgChico","Map Selected!") break;
		}
	}
}


audio_stop_all()


#region Muestra el pop up de activar o desactivar las luces
	if (global.contr_luz_popup==false) {
		scr_popup_aviso_luces()
		global.contr_luz_popup = true
		ini_open("comandos.ini")
		ini_write_real("jugadorDatos","luz_popup",global.contr_luz_popup)
		ini_close()
	}
#endregion
