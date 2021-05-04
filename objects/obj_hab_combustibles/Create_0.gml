/// @description Variables
// Puede escribir su código en este editor

rango_marcador = 500
mostrar_nombre = false

switch(os_get_language()) {
	case "es": nombre = "ENERGÍA" break;
	case "pt": nombre = "ENERGIA" break;
	case "it": nombre = "ENERGIAЭНЕРГИЯ" break;
	case "ru": nombre = "ЭНЕРГИЯ" break;
	default: nombre = "ENERGY" break;
}

ds_list_add(global.nombre_habitaciones, nombre)