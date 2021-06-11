/// @description Variables
// Puede escribir su código en este editor

rango_marcador = 500
mostrar_nombre = false

switch(os_get_language()) {
	case "es": nombre = "FÁBRICA" break;
	case "pt": nombre = "FÁBRICA" break;
	case "it": nombre = "FABBRICA" break;
	case "ru": nombre = "ЗАВОД" break;
	default: nombre = "FACTORY" break;
}

ds_list_add(global.nombre_habitaciones, nombre)