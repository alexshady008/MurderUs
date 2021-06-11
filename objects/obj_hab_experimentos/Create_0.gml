/// @description Variables
// Puede escribir su código en este editor

rango_marcador = 500
mostrar_nombre = false

switch(os_get_language()) {
	case "es": nombre = "EXPERIMENTOS" break;
	case "pt": nombre = "ESPERIMENTI" break;
	case "it": nombre = "ESPERIMENTI" break;
	case "ru": nombre = "ЭКСПЕРИМЕНТЫ" break;
	default: nombre = "EXPERIMENTS" break;
}

ds_list_add(global.nombre_habitaciones, nombre)