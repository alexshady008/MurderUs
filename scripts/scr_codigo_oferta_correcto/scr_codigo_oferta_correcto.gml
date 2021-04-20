function scr_codigo_oferta_correcto() {
	switch (os_get_language())
	{
		case "es":  scr_crear_popup_mensaje("msgChico","¡CODIGO CORRRECTO! DESBLOQUEASTE TODO!")  break;
		case "pt":  scr_crear_popup_mensaje("msgChico","CÓDIGO CORRETO! VOCÊ DESBLOQUEOU TUDO!")  break;
		case "it":  scr_crear_popup_mensaje("msgChico","CODICE CORRETTO! HAI SBLOCCATO TUTTO!")  break;
		case "ru":  scr_crear_popup_mensaje("msgChico","ПРАВИЛЬНЫЙ КОД! ВЫ ВСЕ РАЗБЛОКИРОВАНЫ!")  break;
		default:  scr_crear_popup_mensaje("msgChico","CORRECT CODE! YOU UNLOCKED EVERYTHING!")  break;
	} 


}
