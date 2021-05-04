/// @description Contr el nombre
// Puede escribir su código en este editor

if (entradaTeclado != "")
{
	//global.nombre = string_lettersdigits(entradaTeclado)
	global.nombre = scr_contr_string_ingresado(entradaTeclado)
	
	#region Limita el nombre
		if (string_length(global.nombre) > 20) { 
		global.nombre = string_copy( global.nombre,1,20); 
		global.nombre = string_insert("...",global.nombre,21)
		} 
	#endregion
	
	// Guarda el nombre
	ini_open("comandos.ini")
		ini_write_string("jugadorDatos","nombre",global.nombre)
	ini_close()
}
else {
	global.nombre = "MurderUs"
}
