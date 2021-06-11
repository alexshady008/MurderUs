/// @description Variables
// Puede escribir su código en este editor

rango_marcador = 500
mostrar_nombre = false

switch(os_get_language()) {
	case "es": nombre = "REUNIONES" break;
	case "pt": nombre = "ENCONTROS" break;
	case "it": nombre = "INCONTRI" break;
	case "ru": nombre = "ВСТРЕЧИ" break;
	default: nombre = "MEETINGS" break;
}

ds_list_add(global.nombre_habitaciones, nombre)