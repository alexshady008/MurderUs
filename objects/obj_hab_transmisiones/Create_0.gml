/// @description Variables
// Puede escribir su código en este editor

rango_marcador = 500
mostrar_nombre = false

switch(os_get_language()) {
	case "es": nombre = "TRANSMISIONES" break;
	case "pt": nombre = "TRANSMISSÕES" break;
	case "it": nombre = "TRASMISSIONI" break;
	case "ru": nombre = "ТРАНСМИССИИ" break;
	default: nombre = "TRANSMISSIONS" break;
}


ds_list_add(global.nombre_habitaciones, nombre)