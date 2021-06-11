/// @description Variables
// Puede escribir su código en este editor

color = c_white
borde = c_black
color2 = make_colour_rgb(12,107,12) 
guardado = false
entradaTeclado = ""
tipo_mapa_sala_inicial = 1
cant_tripulantes_sala_inicial = 1
cant_raza2_sala_inicial = 0
max_tareas = 10  //14

global.jugabilidad = true
randomize()
// Tareas
//global.max_tareas_crearse = 14  //10
//global.min_tareas_crearse = 10  //5


if (global.editor==false)
{
	global.tipo_mapa_sala = tipo_mapa_sala_inicial
	global.cant_tripulantes_sala = cant_tripulantes_sala_inicial
	global.cant_raza2_sala = cant_raza2_sala_inicial
	global.max_tareas_crearse = max_tareas  //10
	global.min_tareas_crearse = 7  //10
	global.max_tareas = max_tareas
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
global.lista_tareas = ds_list_create()
global.nombre_habitaciones = ds_list_create()