function scr_popup_vestimenta_seleccionada() {
	switch (os_get_language())
	{
		case "es":  scr_crear_popup_mensaje("msgChico","¡OBJETO SELECCIONADO!")  break;
		case "pt":  scr_crear_popup_mensaje("msgChico","OBJETO SELECIONADO!")  break;
		case "it":  scr_crear_popup_mensaje("msgChico","OGGETTO SELEZIONATO!")  break;
		case "ru":  scr_crear_popup_mensaje("msgChico","ВЫБРАННЫЙ ОБЪЕКТ!")  break;
		default:  scr_crear_popup_mensaje("msgChico","SELECTED OBJECT!")  break;
	} 


}
