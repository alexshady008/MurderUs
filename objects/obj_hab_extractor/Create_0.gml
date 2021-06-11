/// @description Variables
// Puede escribir su código en este editor

rango_marcador = 500
mostrar_nombre = false

switch(os_get_language()) {
	case "es": nombre = "EXTRACTOR" break;
	case "pt": nombre = "EXTRATOR" break;
	case "it": nombre = "ESTRATTORE" break;
	case "ru": nombre = "ЭКСТРАКТОР" break;
	default: nombre = "EXTRACTOR" break;
}

ds_list_add(global.nombre_habitaciones, nombre)