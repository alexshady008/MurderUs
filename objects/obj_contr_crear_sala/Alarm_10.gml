/// @description Nombre de la sala
// Puede escribir su código en este editor

if (entradaTeclado != "")
{
	//global.nombre_sala = string_lettersdigits(entradaTeclado)
	global.nombre_sala = scr_contr_string_ingresado(entradaTeclado)
	#region Limita el nombre
		if (string_length(global.nombre) > 20) { 
		global.nombre_sala = string_copy( global.nombre_sala,1,20); 
		global.nombre_sala = string_insert("...",global.nombre_sala,21)
		} 
	#endregion
}