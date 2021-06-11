/// @description Contr el nombre
// Puede escribir su código en este editor

if !(global.editor){
	switch(os_get_language()) {
		case "es": nombre = "HABITACIÓN "+string(num) break;
		case "pt": nombre = "QUARTO "+string(num) break;
		case "it": nombre = "CAMERA "+string(num) break;
		case "ru": nombre = "КОМНАТА "+string(num) break;
		default: nombre = "ROOM "+string(num) break;
	}

	ds_list_add(global.nombre_habitaciones, nombre)
}