/// @description Variables
// Puede escribir su código en este editor

rango_marcador = 500
mostrar_nombre = false

switch(os_get_language()) {
	case "es": nombre = "JARDÍN INICIAL" break;
	case "pt": nombre = "JARDIM INICIAL" break;
	case "it": nombre = "GIARDINO INIZIALEE" break;
	case "ru": nombre = "НАЧАЛЬНЫЙ САД" break;
	default: nombre = "INITIAL GARDEN" break;
}

ds_list_add(global.nombre_habitaciones, nombre)