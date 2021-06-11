/// @description Variables
// Puede escribir su código en este editor

rango_marcador = 500
mostrar_nombre = false

switch(os_get_language()) {
	case "es": nombre = "SALÓN PRINCIPAL" break;
	case "pt": nombre = "SALA PRINCIPAL" break;
	case "it": nombre = "STANZA PRINCIPALE" break;
	case "ru": nombre = "ГЛАВНАЯ КОМНАТА" break;
	default: nombre = "MAIN ROOM" break;
}

ds_list_add(global.nombre_habitaciones, nombre)