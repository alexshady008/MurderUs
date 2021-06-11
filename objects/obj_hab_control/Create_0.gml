/// @description Variables
// Puede escribir su código en este editor

rango_marcador = 500
mostrar_nombre = false

switch(os_get_language()) {
	case "es": nombre = "COMANDOS" break;
	case "pt": nombre = "COMANDOS" break;
	case "it": nombre = "COMANDI" break;
	case "ru": nombre = "КОМАНДЫ" break;
	default: nombre = "COMMANDS" break;
}

ds_list_add(global.nombre_habitaciones, nombre)