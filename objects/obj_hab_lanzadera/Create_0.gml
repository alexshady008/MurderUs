/// @description Variables
// Puede escribir su código en este editor

rango_marcador = 500
mostrar_nombre = false

switch(os_get_language()) {
	case "es": nombre = "LANZADERA" break;
	case "pt": nombre = "TRANSPORTE" break;
	case "it": nombre = "NAVETTA" break;
	case "ru": nombre = "SHUTTLE" break;
	default: nombre = "SHUTTLE" break;
}

ds_list_add(global.nombre_habitaciones, nombre)