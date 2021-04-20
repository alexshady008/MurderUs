// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_contr_texto_acusaciones_msjes(n){
	
	switch(n)
	{
		#region msj 1
			case 1:
				max_etapa_msj = 2
				switch(os_get_language()) {
					case "es": cadena = "Voto a "+global.A break;
					case "pt": cadena = "Eu voto na "+global.A  break;
					case "it": cadena = "Voto per "+global.A  break;
					case "ru": cadena = "Я голосую за "+global.A  break;
					default: cadena = "Vote "+global.A  break;
				}
			break
		#endregion
		
		#region msj 2
			case 2:
				max_etapa_msj = 3
				switch(os_get_language()) {
					case "es": cadena = global.A+" estaba persiguiendo a "+global.B break;
					case "pt": cadena = global.A+" estava perseguindo "+global.B  break;
					case "it": cadena = global.A+" stava inseguendo "+global.B  break;
					case "ru": cadena = global.A+"  преследовала "+global.B  break;
					default: cadena = global.A+" was chasing "+global.B  break;
				}
			break
		#endregion
		
		#region msj 3
			case 3:
				max_etapa_msj = 3
				switch(os_get_language()) {
					case "es": cadena = global.A+" vió a "+global.B+" en alcantarilla" break;
					case "pt": cadena = global.A+" viu "+global.B+" no esgoto"  break;
					case "it": cadena = global.A+" ha visto "+global.B+" nella fogna"  break;
					case "ru": cadena = global.A+" увидел "+global.B+" в канализации"  break;
					default: cadena = global.A+" saw "+global.B+" in the sewer"  break;
				}
			break
		#endregion
		
		#region msj 4
			case 4:
				max_etapa_msj = 3
				switch(os_get_language()) {
					case "es": cadena = global.A+" mató a "+global.B break;
					case "pt": cadena = global.A+" matou "+global.B  break;
					case "it": cadena = global.A+" ha ucciso "+global.B  break;
					case "ru": cadena = global.A+" убил "+global.B  break;
					default: cadena = global.A+" killed "+global.B  break;
				}
			break
		#endregion
		
		#region msj 5
			case 5:
				max_etapa_msj = 2
				switch(os_get_language()) {
					case "es": cadena = global.A+" no reportó el cuerpo" break;
					case "pt": cadena = global.A+" não relatou o corpo"  break;
					case "it": cadena = global.A+" non ha segnalato il corpo"  break;
					case "ru": cadena = global.A+" не сообщил о теле"  break;
					default: cadena = global.A+" didn´t report the body"  break;
				}
			break
		#endregion
		
		#region msj 6
			case 6:
				max_etapa_msj = 2
				switch(os_get_language()) {
					case "es": cadena = global.A+" está mintiendo" break;
					case "pt": cadena = global.A+" está mentindo"  break;
					case "it": cadena = global.A+" sta mentendo"  break;
					case "ru": cadena = global.A+" лжёт"  break;
					default: cadena = global.A+" is liying"  break;
				}
			break
		#endregion
	}
	
	if (os_get_language()=="es" or os_get_language()=="pt" or os_get_language()=="en") cadena_fuente = fnt_chica
	else cadena_fuente = fnt_chica_ru
	cadena_escala = 1
	
	//max_etapa_msj = 1
}