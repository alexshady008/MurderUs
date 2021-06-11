function scr_mejorar_nombre_inicial() {
	randomize()
	var cadena = string(irandom_range(1111,9999))
	var longitud = string_length(global.nombre)
	global.nombre = string_insert(cadena,global.nombre,longitud+1)


	// Guarda el nombre
	/*
	ini_open("comandos.ini")
		ini_write_string("jugadorDatos","nombre",global.nombre)
	ini_close()

/* end scr_mejorar_nombre_inicial */
}
