
function scr_popup_no_hay_nivel_guardado() {
	switch (os_get_language())
	{
		case "es": scr_crear_popup_mensaje("msgChico","No hay ningun nivel guardado en este lugar!")  break;
		case "pt": scr_crear_popup_mensaje("msgChico","Não há nível salvo neste lugar!")  break;
		case "it": scr_crear_popup_mensaje("msgChico","Non c'è alcun livello salvato in questo posto!")  break;
		case "ru": scr_crear_popup_mensaje("msgChico","Там нет уровня, сохраненного в этом месте!")  break;
		default: scr_crear_popup_mensaje("msgChico","There is no level recorded at this location!") break;
	}


}
