/// @description Variables
// Puede escribir su código en este editor

rango_marcador = 500
mostrar_nombre = false

switch(os_get_language()) {
	case "es": nombre = "CAMPOS FUNGICOS" break;
	case "pt": nombre = "CAMPOS FÚNGICOS" break;
	case "it": nombre = "CAMPI FUNGICI" break;
	case "ru": nombre = "ГРИБНЫЕ ПОЛЯ" break;
	default: nombre = "FUNGIC FIELDS" break;
}

ds_list_add(global.nombre_habitaciones, nombre)