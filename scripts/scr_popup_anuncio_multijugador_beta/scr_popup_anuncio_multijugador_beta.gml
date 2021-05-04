function scr_popup_anuncio_multijugador_beta() {
	switch (os_get_language())
	{
		case "es": scr_crear_popup_mensaje("msgMediano","¡El multijugador está en versión Beta, por lo que puede presentar errores de conexiones entre otros! ¡En futuras actualizaciones será mejorado!")  break;
		case "pt": scr_crear_popup_mensaje("msgMediano","O multiplayer está em versão beta, portanto pode apresentar erros de conexão entre outros! Em futuras atualizações, ele será melhorado!")  break;
		case "it": scr_crear_popup_mensaje("msgMediano","Il multiplayer è in versione Beta, quindi potrebbe presentare errori di connessione tra gli altri! Nei futuri aggiornamenti sarà migliorato!")  break;
		case "ru": scr_crear_popup_mensaje("msgMediano","Мультиплеер находится на стадии бета-тестирования, поэтому среди прочего могут быть ошибки подключения! Он будет улучшен в будущих обновлениях!")  break;
		default: scr_crear_popup_mensaje("msgMediano","The multiplayer is in Beta version, so it may present connection errors among others! In future updates it will be improved!") break;
	}


}
