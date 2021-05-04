/// @description Variables
// Puede escribir su código en este editor

rango_marcador = 500
mostrar_nombre = false

switch(os_get_language()) {
	case "es": nombre = "SERVIDORES" break;
	case "pt": nombre = "SERVER" break;
	case "it": nombre = "SERVER" break;
	case "ru": nombre = "СЕРВЕРЫ" break;
	default: nombre = "SERVERS" break;
}

ds_list_add(global.nombre_habitaciones, nombre)