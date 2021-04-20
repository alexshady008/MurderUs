/// @description Variables
// Puede escribir su código en este editor

rango_marcador = 500
mostrar_nombre = false

switch(os_get_language()) {
	case "es": nombre = "RECOLECCIÓN" break;
	case "pt": nombre = "COLHEITA" break;
	case "it": nombre = "RACCOLTO" break;
	case "ru": nombre = "УБОРКА УРОЖАЯ" break;
	default: nombre = "HARVEST" break;
}

ds_list_add(global.nombre_habitaciones, nombre)