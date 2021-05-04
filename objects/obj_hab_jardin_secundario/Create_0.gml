/// @description Variables
// Puede escribir su código en este editor

rango_marcador = 500
mostrar_nombre = false

switch(os_get_language()) {
	case "es": nombre = "JARDÍN SECUNDARIO" break;
	case "pt": nombre = "JARDIM SECUNDÁRIO" break;
	case "it": nombre = "GIARDINO SECONDARIO" break;
	case "ru": nombre = "ВТОРИЧНЫЙ САД" break;
	default: nombre = "SECONDARY GARDEN" break;
}

ds_list_add(global.nombre_habitaciones, nombre)