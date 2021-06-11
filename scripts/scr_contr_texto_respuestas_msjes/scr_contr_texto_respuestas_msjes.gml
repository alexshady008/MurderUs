// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_contr_texto_respuestas_msjes(n){
	
	switch(n)
	{
		#region msj 1
			case 1:
				max_etapa_msj = 1
				switch(os_get_language()) {
					case "es": cadena = "Votar!" break;
					case "pt": cadena = "Voto!"  break;
					case "it": cadena = "Votazione!"  break;
					case "ru": cadena = "Голосование!"  break;
					default: cadena = "Vote!"  break;
				}
			break
		#endregion
		
		#region msj 2
			case 2:
				max_etapa_msj = 1
				switch(os_get_language()) {
					case "es": cadena = "Pasar voto!" break;
					case "pt": cadena = "Pular votação!"  break;
					case "it": cadena = "Saltare il voto!"  break;
					case "ru": cadena = "пропустить голосование!"  break;
					default: cadena = "Skip vote!"  break;
				}
			break
		#endregion
		
		#region msj 3
			case 3:
				max_etapa_msj = 1
				switch(os_get_language()) {
					case "es": cadena = "No lo se!" break;
					case "pt": cadena = "Não sei!"  break;
					case "it": cadena = "Non lo so!"  break;
					case "ru": cadena = "Я не знаю!"  break;
					default: cadena = "I don't know!"  break;
				}
			break
		#endregion
		
		#region msj 4
			case 4:
				max_etapa_msj = 1
				switch(os_get_language()) {
					case "es": cadena = "Quizas!" break;
					case "pt": cadena = "Pode ser!"  break;
					case "it": cadena = "Può essere!"  break;
					case "ru": cadena = "может быть!"  break;
					default: cadena = "Maybe!"  break;
				}
			break
		#endregion
		
		#region msj 5
			case 5:
				max_etapa_msj = 1
				switch(os_get_language()) {
					case "es": cadena = "Mentiras!" break;
					case "pt": cadena = "Mentiras!"  break;
					case "it": cadena = "Bugie!"  break;
					case "ru": cadena = "Ложь!"  break;
					default: cadena = "Lies!"  break;
				}
			break
		#endregion
		
		#region msj 6
			case 6:
				max_etapa_msj = 1
				switch(os_get_language()) {
					case "es": cadena = "Bueno!" break;
					case "pt": cadena = "OK!"  break;
					case "it": cadena = "Va bene!"  break;
					case "ru": cadena = "Хорошо!"  break;
					default: cadena = "Okay!"  break;
				}
			break
		#endregion
	}
	
	if (os_get_language()=="es" or os_get_language()=="pt" or os_get_language()=="en") cadena_fuente = fnt_chica
	else cadena_fuente = fnt_chica_ru
	cadena_escala = 1
	
	//max_etapa_msj = 1
}