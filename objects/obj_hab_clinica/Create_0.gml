/// @description Variables
// Puede escribir su código en este editor

rango_marcador = 500
mostrar_nombre = false

switch(os_get_language()) {
	case "es": nombre = "CLÍNICA" break;
	case "pt": nombre = "CONSULTÓRIO" break;
	case "it": nombre = "CLINICA" break;
	case "ru": nombre = "КЛИНИКА" break;
	default: nombre = "CLINIC" break;
}

ds_list_add(global.nombre_habitaciones, nombre)