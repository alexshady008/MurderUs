function scr_popup_desconexion_sin_internet() {
	switch (os_get_language())
	{
		case "es": scr_crear_popup_mensaje("msgChico","Juego desconectado, revisa tu conexion de internet!")  break;
		case "pt": scr_crear_popup_mensaje("msgChico","Jogo desconectado, verifique sua conexão com a Internet!")  break;
		case "it": scr_crear_popup_mensaje("msgChico","Gioco disconnesso, controlla la tua connessione Internet!")  break;
		case "ru": scr_crear_popup_mensaje("msgChico","Игра отключена, проверьте подключение к Интернету!")  break;
		default: scr_crear_popup_mensaje("msgChico","Game disconnected, check your internet connection!") break;
	}


}
