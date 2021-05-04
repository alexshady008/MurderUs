/// @description Variables
// Puede escribir su código en este editor

rango_marcador = 500
mostrar_nombre = false

switch(os_get_language()) {
	case "es": nombre = "JARDÍN PRINCIPAL" break;
	case "pt": nombre = "JARDIM PRINCIPAL" break;
	case "it": nombre = "GIARDINO PRINCIPALE" break;
	case "ru": nombre = "ГЛАВНЫЙ САД" break;
	default: nombre = "PRINCIPAL GARDEN" break;
}

ds_list_add(global.nombre_habitaciones, nombre)