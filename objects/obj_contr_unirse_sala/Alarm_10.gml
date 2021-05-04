/// @description Codigo de la sala a buscar
// Puede escribir su código en este editor

if (entradaTeclado != "")
{
	global.sala_codigo = string_digits(entradaTeclado)
	#region Limita el nombre
		if (string_length(global.sala_codigo) > global.cant_max_letras_codigo) { 
		global.sala_codigo = string_copy( global.nombre_sala,1,global.cant_max_letras_codigo); 
		} 
	#endregion
}