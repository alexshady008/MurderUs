function scr_popup_puntuar() {
	switch (os_get_language())
	{
		case "es":  scr_crear_popup_pregunta(obj_contr_asincrono,"msgChico","Te gustaría puntuar o comentar este juego?")  break;
		case "pt":  scr_crear_popup_pregunta(obj_contr_asincrono,"msgChico","Gostaria de avaliar ou comentar este jogo?")  break;
		case "it":  scr_crear_popup_pregunta(obj_contr_asincrono,"msgChico","Vuoi votare o commentare questo gioco?")  break;
		case "ru":  scr_crear_popup_pregunta(obj_contr_asincrono,"msgChico","Хотите оценить или прокомментировать эту игру?")  break;
		default:  scr_crear_popup_pregunta(obj_contr_asincrono,"msgChico","Would you like to rate or comment this game?")  break;
	} 


}


