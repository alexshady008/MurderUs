// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_popup_compra_error(){
	switch (os_get_language())
	{
		case "es":  scr_crear_popup_mensaje("msgChico","Compra no disponible!")  break;
		case "pt":  scr_crear_popup_mensaje("msgChico","Compra não disponível!")  break;
		case "it":  scr_crear_popup_mensaje("msgChico","Acquisto non disponibile!")  break;
		case "ru":  scr_crear_popup_mensaje("msgChico","Покупка недоступна!")  break;
		default:  scr_crear_popup_mensaje("msgChico","Purchase not available!")  break;
	}
}