/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

if (tipo!=noone)
{
	switch(global.opciones_msjs)
	{
		//contr el icono y el texto
		case 0: scr_contr_icono_texto_opciones_msjes(tipo) break
		
		//contr el texto de las acusaciones
		case 1: scr_contr_texto_acusaciones_msjes(tipo) break
		
		//contr el texto de las defensas
		case 2: scr_contr_texto_defensas_msjes(tipo) break
		
		//contr el texto de las defensas
		case 3: scr_contr_texto_declaraciones_msjes(tipo) break
		
		//contr el texto de las preguntas
		case 4: scr_contr_texto_preguntas_msjes(tipo) break
		
		//contr el texto de las respuestas
		case 5: scr_contr_texto_respuestas_msjes(tipo) break
		
		//contr el texto de los roles
		case 6: scr_contr_texto_roles_msjes(tipo) break
		
		// Por defecto muestra el icono y el texto
		default: scr_contr_icono_texto_opciones_msjes(tipo) break
	}
}