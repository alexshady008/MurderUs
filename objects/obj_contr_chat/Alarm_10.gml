/// @description Mensaje a enviar
// Puede escribir su código en este editor

if (entradaTeclado != "")
{
	//global.mensaje = string_lettersdigits(entradaTeclado)
	global.mensaje = entradaTeclado
	//mensaje_mostrado = global.mensaje
	#region Limita el mensaje
		if (string_length(global.mensaje) > max_caracteres) { 
		global.mensaje = string_copy( global.mensaje,1,max_caracteres); 
		global.mensaje = string_insert("...",global.mensaje,max_caracteres+1)
		} 
	#endregion
}

global.escribiendo = false