function scr_popup_error_conectar_servidor() {
	switch (os_get_language())
	{
		case "es": scr_crear_popup_mensaje("msgChico","Debes conectarte a internet para jugar online!")  break;
		case "pt": scr_crear_popup_mensaje("msgChico","Você deve se conectar à Internet para jogar online!")  break;
		case "it": scr_crear_popup_mensaje("msgChico","Devi connetterti a Internet per giocare online!")  break;
		case "ru": scr_crear_popup_mensaje("msgChico","Вы должны подключиться к Интернету, чтобы играть онлайн!")  break;
		default: scr_crear_popup_mensaje("msgChico","You must connect to the internet to play online!") break;
	}


}
