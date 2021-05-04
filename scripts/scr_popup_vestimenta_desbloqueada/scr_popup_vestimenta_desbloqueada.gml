function scr_popup_vestimenta_desbloqueada() {
	switch (os_get_language())
	{
		case "es":  scr_crear_popup_mensaje("msgChico","¡DESBLOQUEADO!")  break;
		case "pt":  scr_crear_popup_mensaje("msgChico","DESBLOQUEADO!")  break;
		case "it":  scr_crear_popup_mensaje("msgChico","SBLOCCATO!")  break;
		case "ru":  scr_crear_popup_mensaje("msgChico","РАЗБЛОКИРОВАНО!")  break;
		default:  scr_crear_popup_mensaje("msgChico","UNLOCKED!")  break;
	} 


}
