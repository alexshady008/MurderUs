/// @description Variables
// Puede escribir su código en este editor

rango_marcador = 500
mostrar_nombre = false

switch(os_get_language()) {
	case "es": nombre = "RESERVORIO" break;
	case "pt": nombre = "RESERVA" break;
	case "it": nombre = "RISERVA" break;
	case "ru": nombre = "РЕЗЕРВ" break;
	default: nombre = "RESERVE" break;
}

ds_list_add(global.nombre_habitaciones, nombre)