/// @description Variables
// Puede escribir su código en este editor

rango_marcador = 500
mostrar_nombre = false

switch(os_get_language()) {
	case "es": nombre = "NAVES" break;
	case "pt": nombre = "NAVIOS" break;
	case "it": nombre = "NAVI" break;
	case "ru": nombre = "Корабли" break;
	default: nombre = "SHIPS" break;
}

ds_list_add(global.nombre_habitaciones, nombre)