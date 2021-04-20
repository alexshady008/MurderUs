// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_contr_texto_roles_msjes(n){
	
	switch(n)
	{
		#region msj 1
			case 1:
				max_etapa_msj = 2
				switch(os_get_language()) {
					case "es": cadena = global.A+" es tripulante!" break;
					case "pt": cadena = global.A+" é um membro da tripulação!"  break;
					case "it": cadena = global.A+" è un membro dell'equipaggio!"  break;
					case "ru": cadena = global.A+" - член экипажа!"  break;
					default: cadena = global.A+" is a crew!"  break;
				}
			break
		#endregion
		
		#region msj 2
			case 2:
				max_etapa_msj = 2
				switch(os_get_language()) {
					case "es": cadena = global.A+" es asesino!" break;
					case "pt": cadena = global.A+" é matador!"  break;
					case "it": cadena = global.A+" è assassino!"  break;
					case "ru": cadena = global.A+" - убийца!"  break;
					default: cadena = global.A+" is a killer!"  break;
				}
			break
		#endregion
		
		#region msj 3
			case 3:
				max_etapa_msj = 2
				switch(os_get_language()) {
					case "es": cadena = global.A+" es detective!" break;
					case "pt": cadena = global.A+" é um detetive!"  break;
					case "it": cadena = global.A+" è un detective!"  break;
					case "ru": cadena = global.A+" - детектив!"  break;
					default: cadena = global.A+" is a detective!"  break;
				}
			break
		#endregion
		
		#region msj 4
			case 4:
				max_etapa_msj = 2
				switch(os_get_language()) {
					case "es": cadena = global.A+" es complice!" break;
					case "pt": cadena = global.A+" é cúmplice!"  break;
					case "it": cadena = global.A+" è complice!"  break;
					case "ru": cadena = global.A+" - сообщник!"  break;
					default: cadena = global.A+" is an accomplice!"  break;
				}
			break
		#endregion
		
		#region msj 5
			case 5:
				max_etapa_msj = 2
				switch(os_get_language()) {
					case "es": cadena = global.A+" es sospechoso!" break;
					case "pt": cadena = global.A+" é suspeito!"  break;
					case "it": cadena = global.A+" è sospettoso!"  break;
					case "ru": cadena = global.A+" подозрительно!"  break;
					default: cadena = global.A+" is suspicius!"  break;
				}
			break
		#endregion
		
		#region msj 6
			case 6:
				max_etapa_msj = 2
				switch(os_get_language()) {
					case "es": cadena = global.A+" es bueno!" break;
					case "pt": cadena = global.A+" é bom!"  break;
					case "it": cadena = global.A+" è buono!"  break;
					case "ru": cadena = global.A+" это хорошо!"  break;
					default: cadena = global.A+" is good!"  break;
				}
			break
		#endregion
	}
	
	if (os_get_language()=="es" or os_get_language()=="pt" or os_get_language()=="en") cadena_fuente = fnt_chica
	else cadena_fuente = fnt_chica_ru
	cadena_escala = 1
	
	//max_etapa_msj = 1
}