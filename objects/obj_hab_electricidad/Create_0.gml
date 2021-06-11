/// @description Variables
// Puede escribir su código en este editor

rango_marcador = 500
mostrar_nombre = false

switch(os_get_language()) {
	case "es": nombre = "ELECTRICIDAD" break;
	case "pt": nombre = "ELETRICIDADE" break;
	case "it": nombre = "ELETTRICITÀ" break;
	case "ru": nombre = "ЭЛЕКТРИЧЕСТВО" break;
	default: nombre = "ELECTRICITY" break;
}

ds_list_add(global.nombre_habitaciones, nombre)