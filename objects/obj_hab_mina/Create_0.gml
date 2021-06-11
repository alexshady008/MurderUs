/// @description Variables
// Puede escribir su código en este editor

rango_marcador = 500
mostrar_nombre = false


switch(os_get_language()) {
	case "es": nombre = "MINA" break;
	case "pt": nombre = "MINHA" break;
	case "it": nombre = "IL MIO" break;
	case "ru": nombre = "ШАХТА" break;
	default: nombre = "MINE" break;
}

ds_list_add(global.nombre_habitaciones, nombre)