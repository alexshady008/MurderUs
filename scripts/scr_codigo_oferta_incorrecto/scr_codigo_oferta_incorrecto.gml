function scr_codigo_oferta_incorrecto() {
	switch (os_get_language())
	{
		case "es":  scr_crear_popup_mensaje("msgChico","¡CODIGO INCORRRECTO! ")  break;
		case "pt":  scr_crear_popup_mensaje("msgChico","CÓDIGO INCORRETO!")  break;
		case "it":  scr_crear_popup_mensaje("msgChico","CODICE NON CORRETTO! ")  break;
		case "ru":  scr_crear_popup_mensaje("msgChico","НЕВЕРНЫЙ КОД!")  break;
		default:  scr_crear_popup_mensaje("msgChico","INCORRECT CODE! ")  break;
	} 


}
