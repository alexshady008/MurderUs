/// @description Variables
// Puede escribir su código en este editor

rango_marcador = 500
mostrar_nombre = false

switch(os_get_language()) {
	case "es": nombre = "DEPÓSITO" break;
	case "pt": nombre = "DEPÓSITO" break;
	case "it": nombre = "DEPOSITARE" break;
	case "ru": nombre = "ДЕПОЗИТ" break;
	default: nombre = "DEPOSIT" break;
}

ds_list_add(global.nombre_habitaciones, nombre)