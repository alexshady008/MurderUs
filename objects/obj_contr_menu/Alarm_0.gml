/// @description Crea el pop up del nombre
// Puede escribir su código en este editor

switch(os_get_language()) {
	case "es": scr_crear_popup_obtener_texto(obj_contr_menu,"Nombre:")    break;
	case "pt": scr_crear_popup_obtener_texto(obj_contr_menu,"Nome:")    break;
	case "it": scr_crear_popup_obtener_texto(obj_contr_menu,"Nome:")    break;
	case "ru": scr_crear_popup_obtener_texto(obj_contr_menu,"название:")    break;
	default: scr_crear_popup_obtener_texto(obj_contr_menu,"Name:")     break;
}