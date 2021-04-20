/// @description Variables
// Puede escribir su código en este editor

rango_marcador = 500
mostrar_nombre = false

switch(os_get_language()) {
	case "es": nombre = "DORMITORIO" break;
	case "pt": nombre = "QUARTO" break;
	case "it": nombre = "CAMERA DA LETTO" break;
	case "ru": nombre = "СПАЛЬНАЯ КОМНАТА" break;
	default: nombre = "BEDROOM" break;
}

ds_list_add(global.nombre_habitaciones, nombre)