// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_contr_texto_preguntas_msjes(n){
	
	switch(n)
	{
		#region msj 1
			case 1:
				max_etapa_msj = 1
				switch(os_get_language()) {
					case "es": cadena = "¿Donde estaba el cuerpo?" break;
					case "pt": cadena = "Onde estava o corpo?"  break;
					case "it": cadena = "Dov'era il corpo?"  break;
					case "ru": cadena = "Где было тело?"  break;
					default: cadena = "Where was the body?"  break;
				}
			break
		#endregion
		
		#region msj 2
			case 2:
				max_etapa_msj = 2
				switch(os_get_language()) {
					case "es": cadena = "¿Dónde estaba "+global.A+" ?" break;
					case "pt": cadena = "Onde estava "+global.A+" ?"  break;
					case "it": cadena = "Dov'era "+global.A+" ?" break;
					case "ru": cadena = "Где был "+global.A+"?"  break;
					default: cadena = "Where was "+global.A+" ?"  break;
				}
			break
		#endregion
		
		#region msj 3
			case 3:
				max_etapa_msj = 2
				switch(os_get_language()) {
					case "es": cadena = "¿Qué estaba haciendo "+global.A+" ?" break;
					case "pt": cadena = "O que "+global.A+" estava fazendo?"  break;
					case "it": cadena = "Cosa stava facendo "+global.A+" ?"  break;
					case "ru": cadena = "Что делал "+global.A+"?"  break;
					default: cadena = "What was "+global.A+" doing?"  break;
				}
			break
		#endregion
		
		#region msj 4
			case 4:
				max_etapa_msj = 2
				switch(os_get_language()) {
					case "es": cadena = "¿Quién estaba con "+global.A+" ?" break;
					case "pt": cadena = "Quem estava com "+global.A+" ?"  break;
					case "it": cadena = "Chi era con "+global.A+" ?" break;
					case "ru": cadena = "Кто был с "+global.A+"?"  break;
					default: cadena = "Who was with "+global.A+" ?"  break;
				}
			break
		#endregion
		
		#region msj 5
			case 5:
				max_etapa_msj = 1
				switch(os_get_language()) {
					case "es": cadena = "¿Era un cadáver o un botón de emergencia?" break;
					case "pt": cadena = "Era um cadáver ou um botão de emergência?"  break;
					case "it": cadena = "Era un cadavere o un pulsante di emergenza?"  break;
					case "ru": cadena = "Это был труп или аварийная кнопка?"  break;
					default: cadena = "Was this a dead body or an emergency button?"  break;
				}
			break
		#endregion
		
		#region msj 6
			case 6:
				max_etapa_msj = 1
				switch(os_get_language()) {
					case "es": cadena = "¿Por qué?" break;
					case "pt": cadena = "Porque"  break;
					case "it": cadena = "Perché?"  break;
					case "ru": cadena = "Почему?"  break;
					default: cadena = "Why?"  break;
				}
			break
		#endregion
	}
	
	if (os_get_language()=="es" or os_get_language()=="pt" or os_get_language()=="en") cadena_fuente = fnt_chica
	else cadena_fuente = fnt_chica_ru
	cadena_escala = 1
	
	//max_etapa_msj = 1
}