function scr_popup_desconexion_error() {
	switch (os_get_language())
	{
		case "es": scr_crear_popup_mensaje("msgChico","Ocurrio un error. ¡Por favor, Inténtalo de nuevo!")  break;
		case "pt": scr_crear_popup_mensaje("msgChico","Um erro ocorreu. Por favor, tente novamente!")  break;
		case "it": scr_crear_popup_mensaje("msgChico","Si è verificato un errore. Per favore riprova!")  break;
		case "ru": scr_crear_popup_mensaje("msgChico","Произошла ошибка. Пожалуйста, попробуйте еще раз!")  break;
		default: scr_crear_popup_mensaje("msgChico","An error occurred. Please try again!") break;
	}


}
