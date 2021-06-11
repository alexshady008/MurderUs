// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_contr_texto_defensas_msjes(n){
	
	switch(n)
	{
		#region msj 1
			case 1:
				max_etapa_msj = 2
				switch(os_get_language()) {
					case "es": cadena = "No voto a "+global.A break;
					case "pt": cadena = "não votou em "+global.A  break;
					case "it": cadena = "non ha votato per "+global.A  break;
					case "ru": cadena = "не голосовал за "+global.A  break;
					default: cadena = "Don't vote "+global.A  break;
				}
			break
		#endregion
		
		#region msj 2
			case 2:
				max_etapa_msj = 3
				switch(os_get_language()) {
					case "es": cadena = global.A+" no estaba persiguiendo a "+global.B break;
					case "pt": cadena = global.A+" não estava perseguindo "+global.B  break;
					case "it": cadena = global.A+" non stava inseguendo "+global.B  break;
					case "ru": cadena = global.A+" не гнался за "+global.B  break;
					default: cadena = global.A+" wasn´t chasing "+global.B  break;
				}
			break
		#endregion
		
		#region msj 3
			case 3:
				max_etapa_msj = 3
				switch(os_get_language()) {
					case "es": cadena = global.A+" nunca vio a "+global.B+" en alcantarilla" break;
					case "pt": cadena = global.A+" nunca viu "+global.B+" em esgotos"  break;
					case "it": cadena = global.A+" non ha visto "+global.B+" nelle fogne"  break;
					case "ru": cadena = global.A+" никогда не видел "+global.B+" в канализации"  break;
					default: cadena = global.A+" never saw "+global.B+" in the sewer"  break;
				}
			break
		#endregion
		
		#region msj 4
			case 4:
				max_etapa_msj = 3
				switch(os_get_language()) {
					case "es": cadena = global.A+" no mató a "+global.B break;
					case "pt": cadena = global.A+" não matou "+global.B  break;
					case "it": cadena = global.A+" non ha ucciso "+global.B  break;
					case "ru": cadena = global.A+" не убивал "+global.B  break;
					default: cadena = global.A+" didn´t kill "+global.B  break;
				}
			break
		#endregion
		
		#region msj 5
			case 5:
				max_etapa_msj = 2
				switch(os_get_language()) {
					case "es": cadena = global.A+" no vió el cuerpo" break;
					case "pt": cadena = global.A+" não viu o corpo"  break;
					case "it": cadena = global.A+" non ha visto il corpo"  break;
					case "ru": cadena = global.A+" не видел тела"  break;
					default: cadena = global.A+" didn´t see the body"  break;
				}
			break
		#endregion
		
		#region msj 6
			case 6:
				max_etapa_msj = 2
				switch(os_get_language()) {
					case "es": cadena = global.A+" esta diciendo la verdad" break;
					case "pt": cadena = global.A+" está falando a verdade"  break;
					case "it": cadena = global.A+" sta dicendo la verità"  break;
					case "ru": cadena = global.A+" говорит правду"  break;
					default: cadena = global.A+" is telling the truth"  break;
				}
			break
		#endregion
	}
	
	if (os_get_language()=="es" or os_get_language()=="pt" or os_get_language()=="en") cadena_fuente = fnt_chica
	else cadena_fuente = fnt_chica_ru
	cadena_escala = 1
	
	//max_etapa_msj = 1
}