/// @description Variables
// Puede escribir su código en este editor

rango_marcador = 500
mostrar_nombre = false

switch(os_get_language()) {
	case "es": nombre = "PLANTACIÓN" break;
	case "pt": nombre = "PLANTAÇÃO" break;
	case "it": nombre = "PIANTAGIONE" break;
	case "ru": nombre = "ПОСАДКА" break;
	default: nombre = "PLANTATION" break;
}

ds_list_add(global.nombre_habitaciones, nombre)