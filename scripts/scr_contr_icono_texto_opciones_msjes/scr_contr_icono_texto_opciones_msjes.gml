// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_contr_icono_texto_opciones_msjes(n){
	
	switch(n)
	{
		#region Acusacion
			case 1:
				sprite_icono = spr_icono_acusacion
				switch(os_get_language()) {
					case "es": cadena = "ACUSACIONES" break;
					case "pt": cadena = "ACUSAÇOES"  break;
					case "it": cadena = "ACCUSA"  break;
					case "ru": cadena = "ОБВИНЕНИЕ"  break;
					default: cadena = "ACCUSATIONS"  break;
				}
			break
		#endregion
		
		#region Defensa
			case 2:
				sprite_icono = spr_icono_defensa
				switch(os_get_language()) {
					case "es": cadena = "DEFENSA" break;
					case "pt": cadena = "DEFESA"  break;
					case "it": cadena = "DIFENDERE"  break;
					case "ru": cadena = "ЗАЩИТА"  break;
					default: cadena = "DEFENDING"  break;
				}
			break
		#endregion
		
		#region Declaraciones
			case 3:
				sprite_icono = spr_icono_declaracion
				switch(os_get_language()) {
					case "es": cadena = "DECLARACIONES" break;
					case "pt": cadena = "DECLARAÇÕES"  break;
					case "it": cadena = "DICHIARAZIONI"  break;
					case "ru": cadena = "ЗАЯВЛЕНИЯ"  break;
					default: cadena = "STATEMENTS"  break;
				}
			break
		#endregion
		
		#region Preguntas
			case 4:
				sprite_icono = spr_icono_pregunta
				switch(os_get_language()) {
					case "es": cadena = "PREGUNTAS" break;
					case "pt": cadena = "QUESTÕES"  break;
					case "it": cadena = "DOMANDE"  break;
					case "ru": cadena = "ВОПРОСОВ"  break;
					default: cadena = "QUESTIONS"  break;
				}
			break
		#endregion
		
		#region Respuestas
			case 5:
				sprite_icono = spr_icono_respuesta
				switch(os_get_language()) {
					case "es": cadena = "RESPUESTAS" break;
					case "pt": cadena = "RESPOSTAS"  break;
					case "it": cadena = "RISPOSTE"  break;
					case "ru": cadena = "ОТВЕТЫ"  break;
					default: cadena = "ANSWERS"  break;
				}
			break
		#endregion
		
		#region Roles
			case 6:
				sprite_icono = spr_icono_roles
				switch(os_get_language()) {
					case "es": cadena = "ROLES" break;
					case "pt": cadena = "ROLES"  break;
					case "it": cadena = "RUOLI"  break;
					case "ru": cadena = "РОЛИ"  break;
					default: cadena = "ROLES"  break;
				}
			break
		#endregion
	}
	
	if (os_get_language()=="es" or os_get_language()=="pt" or os_get_language()=="en") cadena_fuente = fnt_normal
	else cadena_fuente = fnt_normal_ru
	cadena_escala = 1
	
	//cant_max_etapas = 1
}