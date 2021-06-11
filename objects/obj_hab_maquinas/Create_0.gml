/// @description Variables
// Puede escribir su código en este editor

rango_marcador = 500
mostrar_nombre = false

switch(os_get_language()) {
	case "es": nombre = "MAQUINAS" break;
	case "pt": nombre = "MÁQUINAS" break;
	case "it": nombre = "MACCHINE" break;
	case "ru": nombre = "МАШИНЫ" break;
	default: nombre = "MACHINES" break;
}

ds_list_add(global.nombre_habitaciones, nombre)