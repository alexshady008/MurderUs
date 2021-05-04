/// @description Variables
// Puede escribir su código en este editor

rango_marcador = 500
mostrar_nombre = false

switch(os_get_language()) {
	case "es": nombre = "LABORATORIO" break;
	case "pt": nombre = "LABORATÓRIO" break;
	case "it": nombre = "LABORATORIO" break;
	case "ru": nombre = "ЛАБОРАТОРИЯ" break;
	default: nombre = "LABORATORY" break;
}

ds_list_add(global.nombre_habitaciones, nombre)