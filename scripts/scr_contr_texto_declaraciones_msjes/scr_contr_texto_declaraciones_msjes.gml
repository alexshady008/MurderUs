// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_contr_texto_declaraciones_msjes(n){
	
	switch(n)
	{
		#region msj 1
			case 1:
				max_etapa_msj = 4
				switch(os_get_language()) {
					case "es": cadena = "El cuerpo estaba en "+global.X break;
					case "pt": cadena = "O corpo estava em "+global.X  break;
					case "it": cadena = "Il corpo era in "+global.X  break;
					case "ru": cadena = "Тело было в "+global.X  break;
					default: cadena = "The body was in "+global.X  break;
				}
			break
		#endregion
		
		#region msj 2
			case 2:
				max_etapa_msj = 3
				switch(os_get_language()) {
					case "es": cadena = global.A+" estaba con "+global.B break;
					case "pt": cadena = global.A+" estava com "+global.B  break;
					case "it": cadena = global.A+" era con "+global.B  break;
					case "ru": cadena = global.A+" был с "+global.B  break;
					default: cadena = global.A+" was with "+global.B  break;
				}
			break
		#endregion
		
		#region msj 3
			case 3:
				max_etapa_msj = 5
				switch(os_get_language()) {
					case "es": cadena = global.A+" estaba en "+global.X break;
					case "pt": cadena = global.A+" estava no "+global.X  break;
					case "it": cadena = global.A+" era in "+global.X  break;
					case "ru": cadena = global.A+" был в "+global.X  break;
					default: cadena = global.A+" was in "+global.X  break;
				}
			break
		#endregion
		
		#region msj 4
			case 4:
				max_etapa_msj = 2
				switch(os_get_language()) {
					case "es": cadena = global.A+" estaba arreglando una tarea" break;
					case "pt": cadena = global.A+" estava consertando uma tarefa"  break;
					case "it": cadena = global.A+" stava fissando un compito"  break;
					case "ru": cadena = global.A+" исправлял задачу"  break;
					default: cadena = global.A+" was fixing a task"  break;
				}
			break
		#endregion
		
		#region msj 5
			case 5:
				max_etapa_msj = 2
				switch(os_get_language()) {
					case "es": cadena = global.A+" estaba limpiando sangre o/y ocultando el cuerpo" break;
					case "pt": cadena = global.A+" estava limpando o sangue e escondendo o corpo"  break;
					case "it": cadena = global.A+" stava pulendo il sangue e nascondendo il corpo"  break;
					case "ru": cadena = global.A+" чистила кровь и прятала тело"  break;
					default: cadena = global.A+" was cleaning blood or / and hiding the"  break;
				}
			break
		#endregion
		
		#region msj 6
			case 6:
				max_etapa_msj = 2
				switch(os_get_language()) {
					case "es": cadena = global.A+" estaba investigando el cuerpo" break;
					case "pt": cadena = global.A+" estava investigando o corpo"  break;
					case "it": cadena = global.A+" stava indagando sul corpo"  break;
					case "ru": cadena = global.A+" исследовала тело"  break;
					default: cadena = global.A+" was investigating the body"  break;
				}
			break
		#endregion
	}
	
	if (os_get_language()=="es" or os_get_language()=="pt" or os_get_language()=="en") cadena_fuente = fnt_chica
	else cadena_fuente = fnt_chica_ru
	cadena_escala = 1
	
	//max_etapa_msj = 1
}